<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
$results_per_request = '25';
include "dbconnect.php";
//query for count on symbols and divide by number of results_per_query to come up with a number of loops to process
$count_sql = "SELECT count(symbol) as count FROM symbols_legacy WHERE `Date` != '' AND NOT EXISTS (SELECT 1 FROM symbols_xignite WHERE symbols_legacy.symbol = symbols_xignite.Symbol);";
$count_result = mysqli_query($data_link, $count_sql);
$count_row = mysqli_fetch_assoc($count_result);
$count = $count_row['count'];
$num_of_requests = ceil($count / $results_per_request);
//create loop for each request
$step = 0;
for ($loop=1; $loop <=$num_of_requests; $loop++)
    {
    $string = "";
    $symbol_sql = "SELECT symbol FROM symbols_legacy WHERE `Date` != '' AND NOT EXISTS (SELECT 1 FROM symbols_xignite WHERE symbols_legacy.symbol = symbols_xignite.Symbol) LIMIT $step, $results_per_request;";
    $symbol_result = mysqli_query($data_link, $symbol_sql);
    for ($counter=1; $counter <= mysqli_num_rows($symbol_result); $counter++)
		{
		$symbol_row = mysqli_fetch_assoc($symbol_result);
        $symbol = $symbol_row['symbol'];
        $string .=  $symbol.",";
        }
    $string = rtrim($string, ",");
    include "l_history_engine.php";
    $step = $step+$results_per_request;
    }
?>