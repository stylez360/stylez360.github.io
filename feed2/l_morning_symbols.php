<?php
//set_time_limit(0);
include "dbconnect.php";
$sql = "truncate `symbols_legacy`;";
$result = mysqli_query($data_link, $sql);
$sql = "SELECT * from `symbols_static`;";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    $symbol = $row['symbol'];
    $insert_sql = "INSERT INTO `symbols_legacy` (
            `uid`,
            `Symbol`)
            VALUES (
            '',
            '".$symbol."');";
    mysqli_query($data_link, $insert_sql);
    }
$sql = "SELECT * from `symbols_frontbase`;";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    $symbol = $row['symbol'];
    $insert_sql = "INSERT INTO `symbols_legacy` (
            `uid`,
            `Symbol`)
            VALUES (
            '',
            '".$symbol."');";
    mysqli_query($data_link, $insert_sql);
    }
include "l_stock_feed_setup.php";
?>