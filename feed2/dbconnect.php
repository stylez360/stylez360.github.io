<?php
	/*if (!($mylink = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>")))
	    {
		print "<h3>could not connect to database</h3>\n";
		exit;
	    }*/
//    if (!($data_link = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>")))
    if (!($data_link = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>")))
	    {
		print "<h3>could not connect to database</h3>\n";
		exit;
	    }
//    if(!($mLink = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>")))
    if(!($mLink = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>")))
        {
        print"<h3>could not connect to database</h3>\n";
        exit;
        }

//$data_link = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>");
//$mLink = mysqli_connect("<ip>","<databaseUser>","<databasePassword>", "<databaseName>");
?>
