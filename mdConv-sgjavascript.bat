:: Batch File converter using showdown CLI utility to convert markdown (.md) files to html
::
:: styleGuide-javascript repository
::
:: Repository: git@github.com:MarkKensington/styleGuide-javascript.git
:: Directory: C:/Users/Mark/Documents/GitHubRepositories/styleGuide-javascript/
::

:: Make any required sub-directorues
MD output-html\css-in-javascript\
MD output-html\react\

:: Convert files to HTML format
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\styleGuide-javascript\LICENSE.md -o output-html\LICENSE.tmp
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\styleGuide-javascript\README.md -o output-html\README.tmp
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\styleGuide-javascript\css-in-javascript\README.md -o output-html\css-in-javascript\README.tmp
CALL node_modules\.bin\showdown makehtml -i C:\Users\Mark\Documents\GitHubRepositories\styleGuide-javascript\react\README.md -o output-html\react\README.tmp

:: Add in the proper HTML header & footer
COPY _templateHdr.html + output-html\LICENSE.tmp + _templateFtr.html output-html\LICENSE.html
COPY _templateHdr.html + output-html\README.tmp + _templateFtr.html output-html\README.html
COPY _templateHdr.html + output-html\css-in-javascript\README.tmp + _templateFtr.html output-html\css-in-javascript\README.html
COPY _templateHdr.html + output-html\react\README.tmp + _templateFtr.html output-html\react\README.html

:: Delete the temp files
DEL output-html\*.tmp /s

:: Copy over CSS & highlight.js files (if reqd) to make them display properly
COPY node_modules\github-markdown-css\github-markdown.css output-html\github-markdown.css
COPY node_modules\highlight.js\styles\docco.css output-html\docco.css
COPY node_modules\highlight.js\lib\highlight.pack.js output-html\highlight.pack.js
