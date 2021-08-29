<?php
$symbolString = "HCFL.FOO.XNAS";
$nSym = substr($symbolString, 0, strrpos($symbolString, '.'));
$nMID =  substr($symbolString, -4);
print "sym = ".$nSym;
print "<br>";
print "MID = ".$nMID;


?>