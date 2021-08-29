<?php
include "dbconnect.php";
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
?>
