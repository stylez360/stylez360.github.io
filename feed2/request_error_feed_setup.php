<?php
include "dbconnect.php";
//$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError';";
//$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError' AND `MarketIdentificationCode` = 'XOTC';";
$sql = "SELECT DISTINCT `Symbol` FROM `stock_feed` WHERE `Outcome` = 'RequestError';";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    //print_r($row);
    $string = $row['Symbol'].".ARCX,".$row['Symbol'].".OOTC,".$row['Symbol'].".XOTC,".$row['Symbol'].".XNAS,".$row['Symbol'].".XNYS,".$row['Symbol'].".XASE,".$row['Symbol'].".PINX,".$row['Symbol'].".BATS";
    print $string;
    print "<BR>";
    }



?>