<?php
date_default_timezone_set("America/New_York");
set_time_limit(0);
include "feed_funcs.php";
include "dbconnect.php";
//holiday
//$timestamp = "1409569200";
//sunday
//$timestamp = "1413720000";
//now
$timestamp = time();
$holiday = isMarketHoliday($timestamp, $mLink);
//print "Holiday ".$holiday."<br>";

$weekday = isWeekday($timestamp, $mLink);
//print "Weekday ".$weekday;

if ($holiday != "Y" && $weekday > "0")
    {
    //print "run the morning stuff";
    include "l_morning_symbols.php";
    }
    else
        {
        //print "don't run the morning stuff";
        }
?>