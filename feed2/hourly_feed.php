<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
$results_per_request = '20';
include "dbconnect.php";
$count_sql = "SELECT count(*) as count FROM `symbols_xignite` WHERE `Date` = '';";
$count_result = mysqli_query($data_link, $count_sql);
$count_row = mysqli_fetch_assoc($count_result);
$count = $count_row['count'];
$num_of_requests = ceil($count / $results_per_request);
//create loop for each request
$step = 0;
for ($loop=1; $loop <=$num_of_requests; $loop++)
    {
    $string = "";
    $symbol_sql = "SELECT * FROM `symbols_xignite` WHERE `Date` = '' LIMIT $step, $results_per_request;";
    $symbol_result = mysqli_query($data_link, $symbol_sql);
    for ($counter=1; $counter <= mysqli_num_rows($symbol_result); $counter++)
		{
		$symbol_row = mysqli_fetch_assoc($symbol_result);
        $symbol = $symbol_row['Symbol'];
        $string .=  $symbol.",";
        }
    $string = rtrim($string, ",");
    include "x_hourly_engine.php";
    $step = $step+$results_per_request;
    }
$count_sql = "SELECT count(*) as count FROM `symbols_legacy` WHERE `Date` = '';";
$count_result = mysqli_query($data_link, $count_sql);
$count_row = mysqli_fetch_assoc($count_result);
$count = $count_row['count'];
$num_of_requests = ceil($count / $results_per_request);
//create loop for each request
$step = 0;
for ($loop=1; $loop <=$num_of_requests; $loop++)
    {
    $string = "";
    $symbol_sql = "SELECT * FROM `symbols_legacy` WHERE `Date` = '' LIMIT $step, $results_per_request;";
    $symbol_result = mysqli_query($data_link, $symbol_sql);
    for ($counter=1; $counter <= mysqli_num_rows($symbol_result); $counter++)
		{
		$symbol_row = mysqli_fetch_assoc($symbol_result);
        $symbol = $symbol_row['symbol'];
        $string .=  $symbol.",";
        }
    $string = rtrim($string, ",");
    include "l_hourly_engine.php";
    $step = $step+$results_per_request;
    }
?>