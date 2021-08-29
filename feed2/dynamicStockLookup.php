<?php
//error_reporting(E_ALL);
//ini_set('display_errors', '1');

include "dbconnect.php";

$string = "";
//$symbol_sql = "SELECT *FROM `stock_valid_symbols` LIMIT 200;";
//$symbol_sql = "SELECT * FROM `stock_symbols` WHERE `exchange` = 'NYSE' LIMIT 0, 50;";
$symbol_sql = "SELECT * FROM `stock_valid_symbols` LIMIT 0, 300;";
$symbol_result = mysqli_query($mylink, $symbol_sql);
for ($counter=1; $counter <= mysqli_num_rows($symbol_result); $counter++)
		{
		$symbol_row = mysqli_fetch_assoc($symbol_result);
        /*print "<pre>";
        print_r($symbol_row);
        print "</pre>";*/
        $symbol = $symbol_row['symbol'];
        $string .=  $symbol.",";
        }
$string = rtrim($string, ",");
//print $string;
//$string = 'T,HES,JCP,F,S,LUV,ETN,AGX,HPQ,DBD,DSX,CSX,BAC,WFT,C,GCA,WG,KEM,GE,PFE,TE,ANF,TR,GWW,MDU,SWN,WMT,TOT,BP,DOM,WFC,GME,BA,REGI,VOXX,MGLN,AXP,ITC,AHL,MFC,LUX,BMO,APOL,RE,RNR,CLX,AGNC,V,TD,BLK,STRA,NYCB,ACE,KIM,OFG,JOY,FIG,OVTI,PFMT,TMK,AUO,WNC,LNC,WRLD,UVE,STS,UBS,UTL,PFG,MKC,AIZ,CS,LBY,GNW,FM,AFG,MRO,AEG,BMA,KNM,REX,LM,GBX,RY,BAM,GES,TRV,CYS,Y,DVN,NTP,UNM,PJC,TEX,CMO,SPW,BFR,ING,EVER,ALK';
$string = $_GET['string'];
$pp_string = '_Token=EF2662FA141B4DC086F6A72B2D15AD2C&IdentifierType=Symbol&Identifiers='.$string;
$opts = array('http'=>
        array('method' =>'POST',
                'port' =>'443',
                'header' =>'Content-type: application/x-www-form-urlencoded',
                'content' =>$pp_string
                )
			);
//print_r($opts);
$context = stream_context_create($opts);
$file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or die ("Xignite API Not Responding");
$results = @stream_get_contents($file);
/*$results=str_replace(' ','+',$results);
$pairs = explode('&',$results);
foreach($pairs as $value)
	{
	//print $value.'<br><br><br>';
	$pair = explode('=', $value);
	//print_r($pair);
	foreach($pair as $key => $value)
		{
		$$pair['0'] = $pair['1'];
		}
	}*/
//Need to trim the last } off the string as it doesnt have a , after it and therefore does not get removed in the explode() thus the -2 in the substr()
//Also needed to trim the [ and ] from the front and back of the package handed to us from the API
$results = substr($results, 1, -2);
/*print "<pre>";
print $results;
print "</pre>";*/


$json = explode("},", $results);
//$json[0] = $json[0]."}";
foreach($json as $key => $value)
    {
    print $value."<br>";
    $value = $value."}";
    $obj = json_decode($value, TRUE);
    print "<pre>";
    print_r($obj);
    print "</pre>";
    print "<pre>";
    var_dump(json_decode($value));
    print "</pre>";
    foreach($obj as $key => $value)
            {
            $$key = $value;
            }
    foreach($obj['Security'] as $key => $value)
            {
            $$key = $value;
            }
    //$CIK = $obj['Security']['CIK'];
    print "###############".$Identity."#####################";
    $feed_insert = "INSERT INTO `feed_data`.`stock_feed` (
            `uid`,
            `Outcome`,
            `Message`,
            `Identity`,
            `Delay`,
            `Date`,
            `Time`,
            `UTCOffset`,
            `Open`,
            `Close`,
            `High`,
            `Low`,
            `Last`,
            `LastSize`,
            `Volume`,
            `PreviousClose`,
            `PreviousCloseDate`,
            `ChangeFromPreviousClose`,
            `PercentChangeFromPreviousClose`,
            `Bid`,
            `BidSize`,
            `BidDate`,
            `BidTime`,
            `Ask`,
            `AskSize`,
            `AskDate`,
            `AskTime`,
            `High52Weeks`,
            `Low52Weeks`,
            `Currency`,
            `TradingHalted`,
            `CIK`,
            `CUSIP`,
            `Symbol`,
            `ISIN`,
            `Valoren`,
            `Name`,
            `Market`,
            `MarketIdentificationCode`,
            `MostLiquidExchange`,
            `CategoryOrIndustry`)
            VALUES (
            '',
            '".$Outcome."',
            '".$Message."',
            '".$Identity."',
            '".$Delay."',
            '".$Date."',
            '".$Time."',
            '".$UTCOffset."',
            '".$Open."',
            '".$Close."',
            '".$High."',
            '".$Low."',
            '".$Last."',
            '".$LastSize."',
            '".$Volume."',
            '".$PreviousClose."',
            '".$PreviousCloseDate."',
            '".$ChangeFromPreviousClose."',
            '".$PercentChangeFromPreviousClose."',
            '".$Bid."',
            '".$BidSize."',
            '".$BidDate."',
            '".$BidTime."',
            '".$Ask."',
            '".$AskSize."',
            '".$AskDate."',
            '".$AskTime."',
            '".$High52Weeks."',
            '".$Low52Weeks."',
            '".$Currency."',
            '".$TradingHalted."',
            '".$CIK."',
            '".$CUSIP."',
            '".$Symbol."',
            '".$ISIN."',
            '".$Valoren."',
            '".$Name."',
            '".$Market."',
            '".$MarketIdentificationCode."',
            '".$MostLiquidExchange."',
            '".$CategoryOrIndustry."'
            );";
    print '<br><br>'.$feed_insert.'<br><br>';
    //mysqli_query($data_link, $feed_insert);
    print "<br>-----------------------------------------------------------------------------------------------------<br>";
    }
?>
