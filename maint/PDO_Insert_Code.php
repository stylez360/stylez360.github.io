<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

include "PDO_dbconnect.php";
$query = "
        INSERT INTO `test`.`pdo` (`id`, `data`) VALUES ('', 'This is a test too')
";
//echo $query;die();
try{
        $rsInsert = $fLink->prepare($query);
        $rsInsert->execute();
}
catch(PDOException $error){
        // Log any error
        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
        //$aErrors[] = $error;
}

//need a for statement

/*$rows = $rsExceptions->fetch(PDO::FETCH_NUM);
for ($counter=1; $counter <= $rows; $counter++)
		{
		$exceptions = $rsExceptions->fetch(PDO::FETCH_ASSOC);
        print "<pre>";
        print_r($exceptions);
        print "</pre>";
        }*/
//$exceptions = mysql_fetch_array($rs_exceptions);

?>