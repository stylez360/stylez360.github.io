<?php
include "feed_funcs.php";
include "dbconnect.php";
$now = time()+300;

if (isMarketOpen(time(), $mLink, 'after'))
    {
    $status_sql = "SELECT * FROM `feed_status`;";
    $status_result = mysqli_query($data_link, $status_sql);
    $status_row = mysqli_fetch_assoc($status_result);
    //print_r($status_row);
    $delay = $now - $status_row['timestamp'];
    print $delay;
    if($delay > 150 && $delay < 200)
        {
        $alert_level = "Y";
        }
        else if($delay >= 200)
            {
            $alert_level = "R";
            }
            else
                {
                $alert_level = "G";
                }

   }
   else
        {
        $alert_level = "C";
        }
//print $alert_level;

//$alert_level values are as follows
//  R = Red.  [SEVERELY LAGGED] Over 120 seconds per feed loop.  Send email and sms every 15min
//  Y = Yellow. [SEEMS SLOW] Between 60 and 120 seconds per feed loop.  Send email every 15min
//  G = Green.  [ALL GOOD]  Between 0 and 60 seconds per feed loop Do nothing (Hunky Dory)
//  C = Closed.  [MARKET CLOSED]  Do nothing

switch ($alert_level) {
    case 'R':
        //Send email and sms every 15min
        $user_sql = "SELECT * FROM `users`;";
        $user_result = mysqli_query($sysmon_link, $user_sql);
        for ($user_count=1; $user_count <=mysqli_num_rows($user_result); $user_count++)
            {
            $user_row = mysqli_fetch_assoc($user_result);
            print_r($user_row);
            $id = $user_row['id'];
            $email = $user_row['email'];
            if ($user_row['last_sms'] < time()-900 && $user_row['number'] != "")
                {
                //send sms
                //print "Send SMS";
                $message = urlencode("Red Alert! - Stock feed seems to be very slow (Red).  Current loop is $delay seconds and counting");
                $sms_url = 'http://api.clickatell.com/http/sendmsg?user=ewomennetwork&password=addison75254&api_id=3388567&MO=1&from=17752374681&to=12625279024&text='.$message;
                $ch = curl_init($sms_url);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
                curl_exec($ch);
                curl_close($ch);
                $sms_sent = time();
                $update_sql = "UPDATE `users` SET `last_sms` = '$sms_sent' WHERE `id` = '$id';";
                print $update_sql;
                mysqli_query($sysmon_link, $update_sql);
                //send email
                $to = $email;
 				$subject = " Red Alert!";
				$body = 'Stock feed seems to be very slow (Red).  Current loop is '.$delay.' seconds and counting';
				if (mail($to, $subject, $body))
					{
					//update send_mail
   					//echo("<p>Message successfully sent!</p>");
					}
					else
						{
						echo("<p>Message delivery failed...</p>");
						}
                }
            }
        echo "RED";
        break;
    case 'Y':
        //Send email every 15min
        echo "YELLOW";
        break;
    case 'G':
        //Do nothing
        echo "GREEN";
        break;
    case 'C':
        //Do nothing
        echo "MARKET CLOSED";
        break;
}

//echo http_get("http://api.clickatell.com/http/sendmsg?user=ewomennetwork&password=addison75254&api_id=3388567&MO=1&from=17752374681&to=12625279024&text=Message");
/*$message = urlencode("Test Message");
$sms_url = 'http://api.clickatell.com/http/sendmsg?user=ewomennetwork&password=addison75254&api_id=3388567&MO=1&from=17752374681&to=12625279024&text='.$message;
print $sms_url;
$ch = curl_init($sms_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_exec($ch);
curl_close($ch);*/
?>