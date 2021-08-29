<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
date_default_timezone_set("America/New_York");
if(!($mLink = mysqli_connect("192.168.111.211", "root", "KfabyZcbE3", "portfolio")))
        {
        print"<h3>could not connect to database</h3>\n";
        exit;
        }


function isWeekday($timestamp)
    {
	return (date('N', $timestamp) < 6); // ISO DoW (7 = Sunday)
    }


function isMarketHoliday($timestamp, $mLink)
    {
    $closed = "N";
    $date = date('Y-m-d', $timestamp);
    $query = "SELECT * FROM system_holidays WHERE date = '$date'";
    //print $query;
    $holiday_result = mysqli_query($mLink, $query);
    if(mysqli_num_rows($holiday_result) > 0)
        {
        $holiday_row = mysqli_fetch_assoc($holiday_result);
        //print_r($holiday_row);
        $closed = $holiday_row['closed'];
        return $holiday_row['closed'];
	    }
    return false;
    }

function isMarketOpen($timestamp, $mLink, $fudge='none') {
	// Is it a weekday?
	if (isWeekday($timestamp)){
		switch($fudge){
			case 'none': // ACTUAL market hours (9:30 to 4:00 ET, 1:00 if it's an early close day)
				$begin = "9:30 AM";
				$end = (isMarketHoliday($timestamp, $mLink) == "E" ? "1:01 PM" : "4:01 PM");
				break;

			case 'before':  // Start 30 minutes early, end on time
				$begin = "9:00 AM";
				$end = (isMarketHoliday($timestamp, $mLink) == "E" ? "1:01 PM" : "4:01 PM");
				break;

			case 'after': // Start on time, end 45 minutes late
				$begin = "9:30 AM";
				$end = (isMarketHoliday($timestamp, $mLink) == "E" ? "1:45 PM" : "4:45 PM");
				break;

			case 'both':  // Start 30 minutes early, end 45 minutes late
				$begin = "9:00 AM";
				$end = (isMarketHoliday($timestamp, $mLink) == "E" ? "1:45 PM" : "4:45 PM");
				break;

			default: // Use actual market hours if not properly specified
				$begin = "9:30 AM";
				$end = (isMarketHoliday($timestamp, $mLink) == "E" ? "1:01 PM" : "4:01 PM");
		}
		if (isMarketHoliday($timestamp, $mLink) == "Y"){  // Closed all day
			return false;
		}else{ // Open today
			if ($timestamp > strtotime(date('j-n-Y', $timestamp).' '.$begin.' America/New_York') && $timestamp < strtotime(date('j-n-Y', $timestamp).' '.$end.' America/New_York')) {
				return true;
			}
		}
	}
	return false;
}



?>