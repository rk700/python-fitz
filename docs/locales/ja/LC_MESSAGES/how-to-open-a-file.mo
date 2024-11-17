Þ          ä               ¬  
   ­  Ú   ¸  B        Ö     ß  W   ò  a   J    ¬  #  Ì     ð     þ          (     >  J   V  u   ¡            '   °  7   Ø  !     /   2  ³   b  ¹  	    Ð
  	   j  #  t  r                  +  c   ´  c      |       *   +     V     o       *   ¤  v   Ï  ¤   F  0   ë  L     h   i  ?   Ò  J     ú   ]  Ê  X   And so on! As you can imagine many text based file formats can be *very simply opened* and *interpreted* by |PyMuPDF|. This can make data analysis and extraction for a wide range of previously unavailable files suddenly possible. Assume that *"some.file"* is actually an **XPS**. Open it like so: Examples How to Open a File If you attempt to open an unsupported file then |PyMuPDF| will throw a file data error. If you have a document with a wrong file extension for its type, you can still correctly open it. If |PyMuPDF| encounters a file with an unknown / missing extension, it will try to open it as a |PDF|. So in these cases there is no need for additional precautions. Similarly, for memory documents, you can just specify `doc=pymupdf.open(stream=mem_area)` to open it as a |PDF| document. In this way you are able to open a variety of file types and perform the typical **non-PDF** specific features like text searching, text extracting and page rendering. Obviously, once you have rendered your `txt` content, then saving as |PDF| or merging with other |PDF| files is no problem. Opening Files Opening Files as Text Opening a `C#` file Opening a `JSON` file Opening an ``XML`` file Opening with :index:`a Wrong File Extension <pair: wrong; file extension>` PDF Text Extraction, PDF Image Extraction, PDF Conversion, PDF Tables, PDF Splitting, PDF Creation, Pyodide, PyScript PyMuPDF is a high-performance Python library for data extraction, analysis, conversion & manipulation of PDF (and other) documents. Supported File Types The following file types are supported: This documentation covers all versions up to |version|. To open a file, do the following: |PyMuPDF| can open files other than just |PDF|. |PyMuPDF| has the capability to open any plain text file as a document. In order to do this you should provide the `filetype` parameter for the `pymupdf.open` function as `"txt"`. |PyMuPDF| itself does not try to determine the file type from the file contents. **You** are responsible for supplying the file type information in some way -- either implicitly, via the file extension, or explicitly as shown with the `filetype` parameter. There are pure :title:`Python` packages like `filetype <https://pypi.org/project/filetype/>`_ that help you doing this. Also consult the :ref:`Document` chapter for a full description. Project-Id-Version: PyMuPDF 1.23.8
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-09-11 21:42+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Suzan Sanver <suzan.sanver@dijipiji.com>
Language: ja
Language-Team: ja <suzan.sanver@dijipiji.com>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.3
 ç­ãï¼ ãæ³åã®ã¨ãããå¤ãã®ãã­ã¹ã ãã¼ã¹ã®ãã¡ã¤ã«å½¢å¼ã¯ã|PyMuPDF| ã«ãã£ã¦éå¸¸ã«ç°¡åã«éãã¦è§£éã§ãã¾ãã ããã«ãããããã¾ã§å©ç¨ã§ããªãã£ãåºç¯å²ã®ãã¡ã¤ã«ã®ãã¼ã¿åæã¨æ½åºãçªç¶å¯è½ã«ãªãã¾ãã ä¾ãã° *"some.file"* ãå®éã«ã¯ **XPS** ãã¡ã¤ã«ã®å ´åã¯ãä»¥ä¸ã®ããã«ãã¦éãã¾ãï¼ ä¾ ãã¡ã¤ã«ãéãæ¹æ³ ãµãã¼ãããã¦ããªããã¡ã¤ã«ãéããã¨ããå ´åãPyMuPDFã¯ãã¡ã¤ã«ãã¼ã¿ã¨ã©ã¼ãã¹ã­ã¼ãã¾ãã æ¡å¼µå­ããã¡ã¤ã«ã¿ã¤ãã¨ç°ãªã£ã¦ãã¦ããæ­£ããéããã¨ãã§ãã¾ãã |PyMuPDF| ã¯ä¸æãªãã¡ã¤ã«ãæ¡å¼µå­ã®ãªããã¡ã¤ã«ã¯PDFã¨ãã¦éãã¾ãããã®ããããããã®å ´åã¯è¿½å ã®æå ±ã¯å¿è¦ããã¾ãããåæ§ã«ãã¡ã¢ãªä¸ã®ãã­ã¥ã¡ã³ãã®å ´åã¯ã`doc=pymupdf.open(stream=mem_area)` ã¨æå®ããã ãã§PDFãã­ã¥ã¡ã³ãã¨ãã¦éããã¨ãã§ãã¾ãã ãã®ããã«ãã¦ããã¾ãã¾ãªç¨®é¡ã®ãã¡ã¤ã«ãéãã¦ããã­ã¹ãæ¤ç´¢ããã­ã¹ãæ½åºããã¼ã¸ ã¬ã³ããªã³ã°ãªã©ã® |PDF| ã«åºæã§ã¯ãªãä¸è¬çãªæ©è½ãå®è¡ã§ãã¾ãã æããã«ãtxt ã³ã³ãã³ããã¬ã³ããªã³ã°ãããã |PDF| ã¨ãã¦ä¿å­ããããä»ã® |PDF| ãã¡ã¤ã«ã¨çµåããããããã¨ã¯åé¡ããã¾ããã ãã¡ã¤ã«ãéã ãã¡ã¤ã«ããã­ã¹ãã¨ãã¦éã C# ãã¡ã¤ã«ãéã JSON ãã¡ã¤ã«ãéã XML ãã¡ã¤ã«ãéã æ¡å¼µå­ã®ç°ãªããã¡ã¤ã«ãéã PDFãã­ã¹ãæ½åºãPDFã¤ã¡ã¼ã¸æ½åºãPDFå¤æãPDFãã¼ãã«ãPDFåå²ãPDFä½æ, Pyodide, PyScript PyMuPDF ã¯ãPDF ï¼ããã³ãã®ä»ã®ï¼ãã­ã¥ã¡ã³ãã®ãã¼ã¿æ½åºãåæãå¤æãæä½ã®ããã®é«æ§è½ãª Python ã©ã¤ãã©ãªã§ãã ãµãã¼ãããã¦ãããã¡ã¤ã«ã¿ã¤ã |PyMuPDF| ã¯ä»¥ä¸ã®ãã¡ã¤ã«ã¿ã¤ãããµãã¼ããã¦ãã¾ãï¼ ãã®ãã­ã¥ã¡ã³ãã¯ |version| ã¾ã§ã®ãã¹ã¦ã®ãã¼ã¸ã§ã³ãå¯¾è±¡ã¨ãã¦ãã¾ãã ãã¡ã¤ã«ãéãã«ã¯ãæ¬¡ã®æé ãå®è¡ãã¾ãã |PyMuPDF| ã¯ |PDF| ä»¥å¤ã®ãã¡ã¤ã«ãéããã¨ãã§ãã¾ãã |PyMuPDF| ã«ã¯ããã¬ã¼ã³ ãã­ã¹ã ãã¡ã¤ã«ããã­ã¥ã¡ã³ãã¨ãã¦éãæ©è½ãããã¾ãã ãããè¡ãã«ã¯ã`pymupdf.open` é¢æ°ã® `filetype` ãã©ã¡ã¼ã¿ããtxtãã¨ãã¦æå®ããå¿è¦ãããã¾ãã |PyMuPDF| èªä½ã¯ããã¡ã¤ã«ã®åå®¹ãããã¡ã¤ã«ã¿ã¤ããå¤æ­ãããã¨ã¯ãã¾ããããã®ãããã¦ã¼ã¶ã¼ããã¡ã¤ã«ã®æ¡å¼µå­ãªã©ãéãã¦æé»çã«ãã¾ãã¯ `filetype <https://pypi.org/project/filetype/>`_ ãã©ã¡ã¼ã¿ã¼ãéãã¦æç¤ºçã«ãã¡ã¤ã«ã¿ã¤ãã®æå ±ãæä¾ããè²¬ä»»ãããã¾ããã¾ããè©³ç´°ãªèª¬æã«ã¤ãã¦ã¯ :ref:`Document` ã®ç« ãåç§ãã¦ãã ããã 