# converter-md2html
Tool to convert markdown (.md) files to html using showdown, formatted using github-markdown-css & highlight.js
For further information on showdown see: http://www.showdownjs.com/ or https://github.com/showdownjs/showdown/wiki
For further information on github-markdown-css see: https://github.com/sindresorhus/github-markdown-css
For further information on hightlight.js see: https://highlightjs.org/ or https://github.com/highlightjs/highlight.js

Browser-based conversion is available under browser/mdConv.html
- Paste the .md file contents into the top window and click convert to get the html formatted code & an html view of the code

INITIAL SETUP OF DIRECTORIES AND RUNNING NODE


CONBINE NEXT 2 ACTIVITIES INTO ONE

MOVE REPO SPECIFIC DETAILS

Activities to convert into HTML first time:
* Using GitBash, clone repository from GitHub: git clone {repository}
* List all markdown files in main directory & sub-directories: ls -1d *.md */*.md
* Create batchFile to convert all markdown files to html format
* Remove any existing files from ./output-html & create any required sub-directories
* Using Node.js Terminal, convert docs to html format: {batchFile}
* Copy any {additionalFiles} from repository into ./output-html
* Update each html using _template.html as the template, plus any additional {updates), and check all looks OK
* Move contents of ./output-html directory and sub-directories to final destination

Activities to update HTML subsequent times:
* Using GitBash, update files from GitHub: git pull {repository}
* (Using Node.js Terminal, ensure showdown is up-to-date: npm update)   ************************* AND COPY CSS & JS FILES TO SUBDIRS
* List all markdown files in main directory & sub-directories: ls -1d *.md */*.md
* Update relevant batchFile with any changes
* Remove any existing files from ./output-html & create any required sub-directories
* Using Node.js Terminal, convert docs to html format: {batchFile}
* Copy any {additionalFiles} from repository into ./output-html
* Update each html using _template.html as the template, plus any additional {updates), and check all looks OK
* Move contents of ./output-html directory and sub-directories to final destination

Repository-specific information.

ethereumbook:
* Repository: git@github.com:ethereumbook/ethereumbook.git
* Directory: C:/Users/Mark/Documents/GitHubRepositories/ethereumbook/
* batchFile: mdConv-ethbook.bat
* AdditionalFiles: 
* Updates: readme.html: update book.asciidoc link to html
* Final Destination: \Malarena SA\Blockchain\Ethereum\ethereumbook

styleGuide-javascript:
* Repository: git@github.com:MarkKensington/styleGuide-javascript.git
* Directory: C:/Users/Mark/Documents/GitHubRepositories/styleGuide-javascript
* batchFile: mdConv-sgjavascript.bat
* AdditionalFiles: 
* Updates: readme.html: fix h2 id's with missing dashes & links to other .md files
* Final Destination: \Malarena SA\Development\StyleGuides\JavaScript

TO DO:
* Update this README.md file with proper markdown comments
* Remove all the hardcoding
* Improve the code so that it reads the files from a database or ini file

TRY TO GET convert button to make it re-highlight without need to press reset

