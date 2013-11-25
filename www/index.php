<?php

/*
    ROUTING: make .htaccess like this:

        RewriteEngine On
        RewriteRule ^([a-zA-Z0-9]+)$ index.php?page=$1
        RewriteRule ^([a-zA-Z0-9]+)/$ index.php?page=$1
*/


// figure out what the page is
$page = empty($_GET["page"]) ? "main" : $_GET["page"];
$$page = "active";

include('html_parts/header.html');

if(file_exists('html_parts/'.$page.'.html'))
    include('html_parts/'.$page.'.html');
else
    include('html_parts/404.html');

include('html_parts/footer.html');
