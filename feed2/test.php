<?php
set_time_limit(28800);
date_default_timezone_set("America/New_York");
include "feed_funcs.php";
include "dbconnect.php";
$now = time();
print $now;
/*while(isMarketOpen($now, $mLink, 'after') === true)
    {
    include "daily_feed.php";
    }*/
?>