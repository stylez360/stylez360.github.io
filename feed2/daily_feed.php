<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
$results_per_request = '300';
include "dbconnect.php";
//query for count on symbols and divide by number of results_per_query to come up with a number of loops to process
$count_sql = "SELECT count(*) as count FROM `stock_feed` WHERE `Outcome` LIKE 'Success' && `Date` != '';";
$count_result = mysqli_query($data_link, $count_sql);
$count_row = mysqli_fetch_assoc($count_result);
$count = $count_row['count'];
//print "Total: ".$count;
$num_of_requests = ceil($count / $results_per_request);
/*print "<br>";
print "Number of Requests: ".$num_of_requests." of ".$results_per_request." Symbols each.";
print "<br>";*/

//create loop for each request\
$step = 0;
for ($loop=1; $loop <=$num_of_requests; $loop++)
    {
    $string = "";
    //$symbol_sql = "SELECT *FROM `stock_valid_symbols` LIMIT 200;";
    //$symbol_sql = "SELECT * FROM `stock_symbols` WHERE `exchange` = 'NYSE' LIMIT '$step', '$results_per_request';";
    $symbol_sql = "SELECT * FROM `stock_feed` WHERE `Outcome` LIKE 'Success' && `Date` != '' LIMIT $step, $results_per_request;";
    //print $symbol_sql;
    $symbol_result = mysqli_query($data_link, $symbol_sql);
    for ($counter=1; $counter <= mysqli_num_rows($symbol_result); $counter++)
		{
		$symbol_row = mysqli_fetch_assoc($symbol_result);
        /*print "<pre>";
        print_r($symbol_row);
        print "</pre>";*/
        $symbol = $symbol_row['Symbol'];
        $string .=  $symbol.",";
        }
    $string = rtrim($string, ",");
    //print $string;
    //print "<br><br><br>";
    include "daily_engine.php";
    //$exec_string = "php /var/www/html/feed/spray_engine.php?string=".$string;
    //shell_exec($exec_string);
    $step = $step+$results_per_request;
    }
?>