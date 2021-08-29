<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
include "dbconnect.php";
$total = '0';
$count = '0';
//query for delisted symbols
$delist_sql = "SELECT * from symbols_mdelist;";
$delist_result = mysqli_query($data_link, $delist_sql);
for ($counter=1; $counter <= mysqli_num_rows($delist_result); $counter++)
    {
    $delist_row = mysqli_fetch_assoc($delist_result);
    //print $delist_row['symbol'];
    $symbol = $delist_row['symbol'];
    /*$delete_feed_sql = "DELETE FROM `stock_feed` WHERE `Symbol` = '$symbol';";
    print $delete_feed_sql;*/
    $check_feed_sql = "SELECT count(*) as count  FROM `stock_feed` WHERE `Symbol` = '$symbol';";
    //print $check_feed_sql;
    $check_feed_result = mysqli_query($data_link, $check_feed_sql);
    $check_feed_row = mysqli_fetch_assoc($check_feed_result);
    $count = $check_feed_row['count'];
    //print $count;
    //print "<br><br>";
    if($count > 0)
        {
        //delete from stock_feed, symbols_xignite and symbols_legacy
        $sf_sql = "DELETE FROM `stock_feed` WHERE `symbol` = '$symbol';";
        mysqli_query($data_link, $sf_sql);
        //print $sf_sql;
        //print "<br>";
        $x_sql = "DELETE FROM `symbols_xignite` WHERE `symbol` = '$symbol';";
        mysqli_query($data_link, $x_sql);
        //print $sf_sql;
        //print "<br>";
        $l_sql = "DELETE FROM `symbols_legacy` WHERE `symbol` = '$symbol';";
        mysqli_query($data_link, $l_sql);
        //print $sf_sql;
        //print "<br>";
        }
    $total = $total + $count;
    //print "<br>";
    }
//print $total;


?>