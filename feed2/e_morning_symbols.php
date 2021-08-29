<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
set_time_limit(0);
//include "feed_funcs.php";
include "dbconnect.php";
$tsql = "truncate `symbols_error`;";
mysqli_query($data_link, $tsql);
//$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError';";
//$sql = "SELECT `Symbol`, `MarketIdentificationCode` FROM `stock_feed` WHERE `Outcome` = 'RequestError' AND `MarketIdentificationCode` = 'XOTC';";
$sql = "SELECT DISTINCT `Symbol` FROM `stock_feed` WHERE `Date` = '';";
//$sql = "SELECT DISTINCT `Symbol` FROM `stock_feed` WHERE `Outcome` = 'RequestError';";
$result = mysqli_query($data_link, $sql);
for ($count=1; $count <=mysqli_num_rows($result); $count++)
    {
    $row = mysqli_fetch_assoc($result);
    //print_r($row);
    $string = $row['Symbol'].".ARCX,".$row['Symbol'].".OOTC,".$row['Symbol'].".XOTC,".$row['Symbol'].".XNAS,".$row['Symbol'].".XNYS,".$row['Symbol'].".XASE,".$row['Symbol'].".PINX,".$row['Symbol'].".BATS";
    //print $string;
    //print "<BR>";



    $url_string = '_Token=EF2662FA141B4DC086F6A72B2D15AD2C&IdentifierType=Symbol&Identifiers='.$string;
    $opts = array('http'=>
            array('method' =>'POST',
                    'port' =>'443',
                    'header' =>'Content-type: application/x-www-form-urlencoded',
                    'content' =>$url_string
                    )
			    );
    $context = stream_context_create($opts);
    //$file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or die ("Xignite API Not Responding");
    $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or die ("Xignite API Not Responding");
    $results = @stream_get_contents($file);
    //Need to trim the last } off the string as it doesnt have a , after it and therefore does not get removed in the explode() thus the -2 in the substr()
    //Also needed to trim the [ and ] from the front and back of the package handed to us from the API
    $results = substr($results, 1, -2);
    $json = explode("},", $results);
    foreach($json as $key => $value)
        {
        $value = $value."}";
        $obj = json_decode($value, TRUE);
        foreach($obj as $key => $value)
                {
                $$key = $value;
                }
        foreach($obj['Security'] as $key => $value)
                {
                $$key = addslashes($value);
                }
        if($Outcome == "Success" && $Open != 0)
            {
            //print $Symbol;
            //print "<br>";
            if (!($data_link = mysqli_connect("p:192.168.111.211","marketocracy","KfabyZcbE3", "feed2")))
	            {
		        //print "<h3>could not connect to database</h3>\n";
		        exit;
	            }
            $nSym = substr($Symbol, 0, strrpos($Symbol, '.'));
            $nMID = substr($Symbol, -4);
            //insert into efeed table
            $insert_sql = "INSERT INTO `feed2`.`symbols_error` (`uid`, `symbol`, `mid`) VALUES (NULL, '$nSym', '$nMID');";
            print $insert_sql;
            print "<br>";
            mysqli_query($data_link, $insert_sql);
            }
        }


    }

print "DONE";

?>