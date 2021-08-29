<?php
date_default_timezone_set("America/New_York");
set_time_limit(0);
include "feed_funcs.php";
include "dbconnect.php";
$timestamp = time();
$holiday = isMarketHoliday($timestamp, $mLink);
$weekday = isWeekday($timestamp, $mLink);
if ($holiday != "Y" && $weekday > "0")
    {
    include "e_morning_symbols.php";
    }
    else
        {
        //print "don't run the morning stuff";
        }
?>