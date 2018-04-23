<?php

//********************************************************************
// do not edit this section

if(!defined("APPSDIR"))
    die("Direct access is not allowed!");

//********************************************************************

$html = <<<HTML
    
    <h2 style="font-size:50pt;">Error</h2>
    
    <p>
        <strong>400 or 401 or 403 or 404 or 500 or 503</strong>
    </p>
    
    You know what this means.    

HTML;

$page->addContent($html);