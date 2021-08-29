<?php
set_time_limit(28800);
include "dbconnect.php";
//truncate `feed_data`.`stockfeed`
$sql = "truncate `feed_data`.`symbol_feed2`;";
$result = mysqli_query($data_link, $sql);
//print_r($result);
include "manual_symbol_list_a-f.php";
include "manual_symbol_list_g-l.php";
include "manual_symbol_list_m-r.php";
include "manual_symbol_list_s-z.php";
//include "stocks_daily_setup.php";
?>