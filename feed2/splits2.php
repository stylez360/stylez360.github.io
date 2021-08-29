<?php
include "dbconnect.php";

$pp_string = 'Exchange=NYSE&StartDate=12/19/2014&EndDate=12/22/2014&_Token=EF2662FA141B4DC086F6A72B2D15AD2C';
$opts = array('http'=>
        array('method' =>'POST',
                'port' =>'443',
                'header' =>'Content-type: application/x-www-form-urlencoded',
                'content' =>$pp_string
                )
			);
//print_r($opts);
$context = stream_context_create($opts);
$file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetAllSplitsByExchange', 'rb', false, $context) or die ("Xignite API not responding");
$results = @stream_get_contents($file);
print $results;
?>