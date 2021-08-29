<?php
include "feed_funcs.php";
include "dbconnect.php";
$now = time();
if (!isMarketOpen(time(), $mLink, 'after'))
    {
    //update feed_status.market_open = 0
    /*$update_sql = "UPDATE feed_status SET `feed_running` = '0' WHERE `uid` = '1';";
    mysqli_query($data_link, $update_sql);*/
    die();
    }
    else
        {
    //do stuff because market is open
    include "hourly_feed.php";
        }


?>