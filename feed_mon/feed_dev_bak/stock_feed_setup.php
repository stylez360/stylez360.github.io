<?php
include "dbconnect.php";
//truncate `stock_feed`
$sql = "truncate `feed_dev`.`stock_feed`;";
$result = mysqli_query($data_link, $sql);
//pull all symbols from symbol_feed and insert them into stock_feed
$sql = "SELECT * from `symbols_xignite`;";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    print_r($row);
    $symbol = $row['Symbol'];
    //insert into symbol_feed
    $insert_sql = "INSERT INTO `stock_feed` (
            `uid`,
            `Symbol`)
            VALUES (
            '',
            '".$symbol."');";
    mysqli_query($data_link, $insert_sql);
    }
//pull all symbols from stock_feed and loop thru pulling feed data and updating stock_feed
include "stocks_daily_setup.php";
?>