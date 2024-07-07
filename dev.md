## development

### render site:

`bag index.janet`

### serve http with live reload:

install
`npm install -g http-server livereload`

run server in directory with `index.html` file
`http-server -o -c-1`

run livereload
`livereload`

make sure js is in html file: <script src="http://localhost:35729/livereload.js"></script>

the port should match the livereload port
