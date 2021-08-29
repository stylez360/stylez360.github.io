<?php
include "feed_funcs.php";
include "dbconnect.php";
$now = time();
if (!isMarketOpen(time(), $mLink, 'after'))
    {
    die();
    }
    else
        {
    //do stuff because market is open
    include "hourly_feed.php";
        }
?>