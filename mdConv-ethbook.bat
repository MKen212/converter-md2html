:: Batch File converter using showdown CLI utility to convert markdown (.md) files to html
::
:: ethereumbook repository
::
:: Repository: git@github.com:ethereumbook/ethereumbook.git
:: Directory: C:/Users/Mark/Documents/GitHubRepositories/ethereumbook/
::

:: Make any required sub-directorues
:: MD output=html\{sub-dir}

:: Convert files to HTML format
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\ethereumbook\CONTRIBUTING.md -o output-html\CONTRIBUTING.tmp
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\ethereumbook\LICENSE.md -o output-html\LICENSE.tmp
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\ethereumbook\README.md -o output-html\README.tmp

:: Add in the proper HTML header & footer
COPY _templateHdr.html + output-html\CONTRIBUTING.tmp + _templateFtr.html output-html\CONTRIBUTING.html
COPY _templateHdr.html + output-html\LICENSE.tmp + _templateFtr.html output-html\LICENSE.html
COPY _templateHdr.html + output-html\README.tmp + _templateFtr.html output-html\README.html

:: Delete the temp files
DEL output-html\*.tmp /s

:: Copy over CSS & highlight.js files (if reqd) to make them display properly
COPY node_modules\github-markdown-css\github-markdown.css output-html\github-markdown.css
:: COPY node_modules\highlight.js\styles\docco.css output-html\docco.css
:: COPY node_modules\highlight.js\lib\highlight.pack.js output-html\highlight.pack.js

