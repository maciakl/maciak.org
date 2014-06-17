var container = document.createElement("div");

container.innerHTML=''
+ '<div id="overlay" onClick="this.style.visibility=\'hidden\'">'
+ '  <iframe src="https://maciak.org/lod.html" height=600 style="background-color:#fff"></iframe>'
+ '</div>'
+ '<style>'
+ '#overlay { visibility: visible; position: fixed; left:0; top:0; width:100%; height:100%; text-align: right; z-index:100000;}'
+ '#overlay iframe { border: 0; width: 300px; height: 100%; padding-left: 20px; opacity: 0.7;}'
+ '</style>';

document.body.appendChild(container);
