<?php
	$cakestring = $_POST['stringcontent']; 
    $headerposition = strpos($cakestring, "|");
	$contentposition = (strlen($cakestring) - $headerposition);
	$header = substr($cakestring,0,$headerposition);
    $header = explode(",", $header);
    $content = substr($cakestring,($headerposition + 1),strlen($cakestring));
    $cakearraynew = [];
    $startpos = 0;
    ForEach($header as $stringlength){
        $endpos = $stringlength;
        $temparrayvalue = substr($content, $startpos, $endpos);
        $cakearrayvalue = array_push($cakearraynew,$temparrayvalue);
        $temparrayvalue = "";
        $startpos = $startpos + $stringlength;
    }
    var_dump($cakearraynew);
?>