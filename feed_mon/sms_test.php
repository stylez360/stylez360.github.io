<?php
include "dbconnect.php";
$now = time();
$status_sql = "SELECT * FROM `feed_status`;";
$status_result = mysqli_query($data_link, $status_sql);
$status_row = mysqli_fetch_assoc($status_result);
//print_r($status_row);
$delay = $now - $status_row['timestamp'];
print $delay;
//echo http_get("http://api.clickatell.com/http/sendmsg?user=ewomennetwork&password=addison75254&api_id=3388567&MO=1&from=17752374681&to=12625279024&text=Message");
/*$message = urlencode("Test Message");
$sms_url = 'http://api.clickatell.com/http/sendmsg?user=ewomennetwork&password=addison75254&api_id=3388567&MO=1&from=17752374681&to=12625279024&text='.$message;
print $sms_url;
$ch = curl_init($sms_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_exec($ch);
curl_close($ch);*/
?>