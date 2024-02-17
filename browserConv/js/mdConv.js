/* eslint-disable no-unused-vars */
/* Javascript converter using showdown & highlight.js to convert markdown (.md) files to html */

const htmlHeader = `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="css/github-markdown.css">
  <link rel="stylesheet" href="css/docco.css">
  <script src="js/highlight.pack.js"></script>
  <script>hljs.initHighlightingOnLoad();</script>
  <style>
    .markdown-body {
      box-sizing: border-box;
      min-width: 200px;
      max-width: 980px;
      margin: 0 auto;
      padding: 45px;
    }
    @media (max-width: 767px) {
      .markdown-body {
        padding: 15px;
      }
    }
  </style>
</head>
<body>
<article class="markdown-body">
`;

const htmlFooter = `
</article>
</body>
</html>
`;

function runConv() {
  let source = document.getElementById("sourceTA");
  let targetSource  = document.getElementById("targetTA");
  let targetDisplay = document.getElementById("targetDiv");
  // eslint-disable-next-line no-undef
  let converter = new showdown.Converter();
  converter.setFlavor ("github");

  let htmlConverted = converter.makeHtml(source.value);

  let htmlFull = htmlHeader + htmlConverted + htmlFooter;
  
  targetSource.value = htmlFull;
  targetSource.innerHTML = htmlFull;

  targetDisplay.value = htmlFull;
  targetDisplay.innerHTML = htmlFull;
  // eslint-disable-next-line no-undef
  hljs.initHighlighting();
}

function runReset() {
  document.location.reload();
}

/*  Code no longer needed as using document.location.reload();
  let source = document.getElementById("sourceTA");
  let targetSource  = document.getElementById("targetTA");
  let targetDisplay = document.getElementById("targetDiv");
  
  source.value = "";
  targetSource.value = "";
  targetSource.innerHTML = "";
  targetDisplay.value = "";
  targetDisplay.innerHTML = "";
  // eslint-disable-next-line no-undef
  hljs.initHighlighting();
}
*/
