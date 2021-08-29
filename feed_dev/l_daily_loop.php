<?php
set_time_limit(28800);
date_default_timezone_set("America/New_York");
include "feed_funcs.php";
include "dbconnect.php";
$now = time();
while (1)
    {
    if (!isMarketOpen(time(), $mLink, 'after'))
        {
        $update_sql = "UPDATE feed_status SET `l_feed_running` = '0' WHERE `uid` = '1';";
mysqli_query($data_link, $update_sql);
        die();
        }
    $market_open = "1";
    //start timestamp of one full loop
    $start_ts = time();
    include "l_daily_feed.php";
    //end timestamp of one full loop
    $end_ts = time();
    //calculate number of seconds of cycle
    $cycle_time = $end_ts - $start_ts;
    //include the feed_status/feed_history module
    include "l_feed_status.php";
    //This is where we include the logger
    }
?>