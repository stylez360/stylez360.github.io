<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

include "PDO_dbconnect.php";
$query = "
        SELECT *
        FROM stock_feed
        WHERE Outcome NOT LIKE 'Success'
        OR (Outcome LIKE 'Success' AND PreviousClose < 0.01)
        ORDER BY Outcome, Symbol LIMIT 10
";
//echo $query;die();
try{
        $rsExceptions = $fLink->prepare($query);
        $rsExceptions->execute();
}
catch(PDOException $error){
        // Log any error
        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
        $aErrors[] = $error;
        if($error)
            {
            print "errors exist";
            }
            else
                {
                print"errors do NOT exist";
                }
        print_r($aErrors);
        //print $error;
        die;
}

//need a for statement

$rows = $rsExceptions->fetch(PDO::FETCH_NUM);
for ($counter=1; $counter <= $rows; $counter++)
		{
		$exceptions = $rsExceptions->fetch(PDO::FETCH_ASSOC);
        print "<pre>";
        print_r($exceptions);
        print "</pre>";
        }
//$exceptions = mysql_fetch_array($rs_exceptions);

?>