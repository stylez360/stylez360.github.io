<?php
//print $string;
//$string = 'T,HES,JCP,F,S,LUV,ETN,AGX,HPQ,DBD,DSX,CSX,BAC,WFT,C,GCA,WG,KEM,GE,PFE,TE,ANF,TR,GWW,MDU,SWN,WMT,TOT,BP,DOM,WFC,GME,BA,REGI,VOXX,MGLN,AXP,ITC,AHL,MFC,LUX,BMO,APOL,RE,RNR,CLX,AGNC,V,TD,BLK,STRA,NYCB,ACE,KIM,OFG,JOY,FIG,OVTI,PFMT,TMK,AUO,WNC,LNC,WRLD,UVE,STS,UBS,UTL,PFG,MKC,AIZ,CS,LBY,GNW,FM,AFG,MRO,AEG,BMA,KNM,REX,LM,GBX,RY,BAM,GES,TRV,CYS,Y,DVN,NTP,UNM,PJC,TEX,CMO,SPW,BFR,ING,EVER,ALK';
$url_date = date("m/d/y");
//$string = 'LUV,AAL';
$pp_string = '_Token=EF2662FA141B4DC086F6A72B2D15AD2C&IdentifierType=Symbol&Identifiers='.$string.'&&AdjustmentMethod=SplitOnly&AsOfDate='.$url_date;
$opts = array('http'=>
        array('method' =>'POST',
                'port' =>'80',
                'header' =>'Content-type: application/x-www-form-urlencoded',
                'content' =>$pp_string
                )
			);
//print_r($opts);
$context = stream_context_create($opts);
$file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or $file = fopen('http://www.xignite.com/xGlobalHistorical.json/GetGlobalHistoricalQuotes', 'rb', false, $context) or die ("Xignite API Not Responding");
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
$results = substr($results, 1, -1);
/*print "<pre>";
print $results;
print "</pre>";*/


$json = explode("},", $results);
//$json[0] = $json[0]."}";
foreach($json as $key => $value)
    {

    $value = $value."}}";
    //print $value."<br>";
    $obj = json_decode($value, TRUE);
    /*print "<pre>";
    print_r($obj['Security']);
    print "</pre>";*/
    /*print "<pre>";
    var_dump(json_decode($value));
    print "</pre>";*/
    foreach($obj as $key => $value)
            {
            $$key = $value;
            //print $$key.'<br>';
            }
    foreach($obj['Security'] as $key => $value)
            {
            $$key = $value;
            }
    //$CIK = $obj['Security']['CIK'];
    //print "###############".$Identity."#####################";
    $cusip_insert = "INSERT INTO `feed2`.`cusip_feed` (
            `uid`,
            `Symbol`,
            `Cusip`,
            `Market`,
            `Date`)
            VALUES (
            '',
            '".$Symbol."',
            '".$Cusip."',
            '".$Market."',
            '".$url_date."'
            );";
    //print '<br><br>'.$cusip_insert.'<br><br>';
    mysqli_query($data_link, $cusip_insert);
    //print "<br>-----------------------------------------------------------------------------------------------------<br>";
    }
?>
