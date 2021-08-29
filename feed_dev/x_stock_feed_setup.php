<?php
include "dbconnect.php";
$sql = "truncate `feed_dev`.`stock_feed`;";
$result = mysqli_query($data_link, $sql);
$sql = "SELECT * from `symbols_xignite`;";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    $symbol = $row['Symbol'];
    $insert_sql = "INSERT INTO `stock_feed` (
            `uid`,
            `Symbol`)
            VALUES (
            '',
            '".$symbol."');";
    mysqli_query($data_link, $insert_sql);
    }
include "x_stocks_daily_setup.php";
?>