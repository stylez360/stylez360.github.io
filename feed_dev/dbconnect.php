<?php
	/*if (!($mylink = mysqli_connect("192.168.111.211","root","KfabyZcbE3", "marketocracy")))
	    {
		print "<h3>could not connect to database</h3>\n";
		exit;
	    }*/
    if (!($data_link = mysqli_connect("192.168.111.211","root","KfabyZcbE3", "feed2")))
	    {
		print "<h3>could not connect to database</h3>\n";
		exit;
	    }
    if(!($mLink = mysqli_connect("192.168.111.211", "root", "KfabyZcbE3", "portfolio")))
        {
        print"<h3>could not connect to database</h3>\n";
        exit;
        }
?>
