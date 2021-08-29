<?php
set_time_limit(28800);
include "dbconnect.php";
//truncate `feed_data`.`stockfeed`
$sql = "truncate `feed_data`.`symbol_feed`;";
$result = mysqli_query($data_link, $sql);
//print_r($result);
include "symbol_list_a-f.php";
include "symbol_list_g-l.php";
include "symbol_list_m-r.php";
include "symbol_list_s-z.php";
//import all static symbols
include "static_symbol_import.php";
include "frontbase_symbol_import.php";
include "stocks_daily_setup.php";
?>