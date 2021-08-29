<?php
set_time_limit(28800);
include "dbconnect.php";
//truncate `feed_data`.`stockfeed`
$sql = "truncate `feed_data`.`symbol_feed2`;";
$result = mysqli_query($data_link, $sql);
//print_r($result);
include "manual_symbol_list.php";
//include "stocks_daily_setup.php";
?>