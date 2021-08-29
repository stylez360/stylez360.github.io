<?php
set_time_limit(9000);
error_reporting(E_ALL);
include"feed_funcs.php";
include "dbconnect.php";
//include "dbconnect-pdo.php";
$timestamp = time();


$open = isMarketOpen($timestamp, $mLink, 'none');

if ($open === true)
    {
    print "Market is open";
    }
    else if ($open === false)
        {
        print "Market is closed";
        }

?>