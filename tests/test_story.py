import fitz
import os
import textwrap


def test_story():

    otf = os.path.abspath(f'{__file__}/../resources/PragmaticaC.otf')
    # 2023-12-06: latest mupdf throws exception if path uses back-slashes.
    otf = otf.replace('\\', '/')
    CSS = f"""
        @font-face {{font-family: test; src: url({otf});}}
    """

    HTML = """
    <p style="font-family: test;color: blue">We shall meet again at a place where there is no darkness.</p>
    """

    MEDIABOX = fitz.paper_rect("letter")
    WHERE = MEDIABOX + (36, 36, -36, -36)
    # the font files are located in /home/chinese
    arch = fitz.Archive(".")
    # if not specfied user_css, the output pdf has content
    story = fitz.Story(HTML, user_css=CSS, archive=arch)

    writer = fitz.DocumentWriter("output.pdf")

    more = 1

    while more:
        device = writer.begin_page(MEDIABOX)
        more, _ = story.place(WHERE)
        story.draw(device)
        writer.end_page()

    writer.close()


def test_2753():
    def rectfn(rect_num, filled):
        return fitz.Rect(0, 0, 200, 200), fitz.Rect(50, 50, 100, 100), None

    def make_pdf(html, path_out):
        story = fitz.Story(html=html)
        document = story.write_with_links(rectfn)
        print(f"Writing to: {path_out=}.")
        document.save(path_out)
        return document

    doc_before = make_pdf(
        textwrap.dedent(
            """
                <p>Before</p>
                <p style="page-break-before: always;"></p>
                <p>After</p>
                """
        ),
        os.path.abspath(f"{__file__}/../../tests/test_2753-out-before.pdf"),
    )

    doc_after = make_pdf(
        textwrap.dedent(
            """
                <p>Before</p>
                <p style="page-break-after: always;"></p>
                <p>After</p>
                """
        ),
        os.path.abspath(f"{__file__}/../../tests/test_2753-out-after.pdf"),
    )

    assert len(doc_before) == 2

    if fitz.mupdf_version_tuple >= (1, 23, 7) or fitz.pymupdf_version_tuple >= (
        1,
        23,
        7,
    ):
        # Bug is fixed.
        assert len(doc_after) == 2
    else:
        # page-break-after not handled correctly.
        assert len(doc_after) == 1


def test_scale_to_fit():
    text = "Hello, World"  # short text
    ltext = text * 10  # long text

    # testing shrink option -------------------------------
    # search for smallest rect version (same aspect ratio)
    story = fitz.Story(text)
    rect = fitz.Rect(0, 0, 100, 100)
    rc, factor = story.scale_to_fit(
        width=rect.width,
        height=rect.height,
        expand=False,
        shrink=True,
    )
    assert rc == 0
    assert 0 < factor < 1
    small_rect = rect * factor  # create the shrinked rect version

    # ensure text will fit in under "place"
    more, filled = story.place(small_rect)
    assert more == 0
    assert fitz.Rect(filled).height <= small_rect.height

    # testing expand option -------------------------------
    # compute expanded rect for non-fitting text
    story = fitz.Story(ltext)
    rc, factor = story.scale_to_fit(
        width=small_rect.width,
        height=small_rect.height,
        expand=True,
    )
    assert rc == 0
    assert factor > 1

    # make expanded rect and see if "place" works with it
    lrect = small_rect * factor
    more, filled = story.place(lrect)
    assert more == 0
    assert fitz.Rect(filled).height <= lrect.height
