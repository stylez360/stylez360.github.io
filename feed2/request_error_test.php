<?php
include "dbconnect.php";
//$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError';";
//$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError' AND `MarketIdentificationCode` = 'XOTC';";
$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError' AND `MarketIdentificationCode` = 'XNAS';";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $id = '';
    $row = mysqli_fetch_assoc($result);
    $sym = $row['Symbol'];
    $id = $row['MarketIdentificationCode'];
    //$sym_id = $row['Symbol'].'.'.$row['MarketIdentificationCode'];
    if ($id == 'XOTC')
        {
        $id = 'OOTC';
        }
    if ($id == 'ARCX')
        {
        $id = 'NYSE';
        }
    $sym_id = $sym.'.'.$id;
    //print_r($row);
    print $sym_id.',';
    //print "<br>";
    //insert into symbol_feed
    /*$insert_sql = "INSERT INTO `stock_feed` (
            `uid`,
            `symbol`,
            `Outcome`,
            `Date`)
            VALUES (
            '',
            '".$symbol."',
            'Success',
            '11/25/2014');";*/
    //print $insert_sql;
    //mysqli_query($data_link, $insert_sql);
    }


?>