<?php
include "dbconnect.php";
$sql = "SELECT * from `symbol_frontbase`;";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    //print_r($row);
    $symbol = $row['symbol'];
    //insert into symbol_feed
    $insert_sql = "INSERT INTO `symbol_feed` (
            `uid`,
            `symbol`)
            VALUES (
            '',
            '".$symbol."');";
    mysqli_query($data_link, $insert_sql);
    }


?>