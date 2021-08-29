<?php
//set_time_limit(0);
include "dbconnect.php";
//truncate `feed_data`.`stockfeed`
$sql = "truncate `symbols_xignite`;";
$result = mysqli_query($data_link, $sql);
//print_r($result);
//ask for all symbols of the exchanges we use
include "symbol_list_a-f.php";
include "symbol_list_g-l.php";
include "symbol_list_m-r.php";
include "symbol_list_s-z.php";

//these removed to facilitate separate feeds for symbol_feed and static/frontbase feed
//include "static_symbol_import.php";
//include "frontbase_symbol_import.php";

include "stock_feed_setup.php";
//include "stocks_daily_setup.php";
?>