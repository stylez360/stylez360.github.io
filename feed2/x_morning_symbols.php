<?php
include "dbconnect.php";
$sql = "truncate `symbols_xignite`;";
$result = mysqli_query($data_link, $sql);
//ask for all symbols of the exchanges we use
include "x_symbol_list_a-f.php";
include "x_symbol_list_g-l.php";
include "x_symbol_list_m-r.php";
include "x_symbol_list_s-z.php";
include "x_stock_feed_setup.php";
include "l_morning_symbols.php";
?>