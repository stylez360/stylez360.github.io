<?php
include "dbconnect.php";
$sql = "SELECT * from `symbols_legacy`;";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    $symbol = $row['symbol'];
    //insert into symbol_feed
    $insert_sql = "INSERT INTO `stock_feed` (
            `uid`,
            `Symbol`)
            VALUES (
            '',
            '".$symbol."');";
    mysqli_query($data_link, $insert_sql);
    }
include "l_stocks_daily_setup.php";
?>