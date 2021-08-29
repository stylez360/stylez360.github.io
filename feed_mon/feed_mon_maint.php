<?php
include "dbconnect.php";
$now = time()+60;
$timestamp_update_sql = "UPDATE `feed_status` SET `timestamp` = '$now' WHERE `uid` = '1';";
mysqli_query($data_link, $timestamp_update_sql);
//print "hi";
?>