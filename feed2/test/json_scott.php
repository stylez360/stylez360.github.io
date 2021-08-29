<?php



//old string
//$string ='{"Outcome":"Success","Message":"Delay times are 15 mins for NYSE.","Identity":"Request","Delay":0.21402089999999999,"Date":"9/11/2014","Time":"4:00:15 PM","UTCOffset":-4.0,"Open":34.61,"Close":34.85,"High":34.88,"Low":34.5,"Last":34.85,"LastSize":725338.0,"Volume":16022416.0,"PreviousClose":34.7,"PreviousCloseDate":"9/10/2014","ChangeFromPreviousClose":0.15,"PercentChangeFromPreviousClose":0.432,"Bid":34.76,"BidSize":1000.0,"BidDate":"9/11/2014","BidTime":"4:05:06 PM","Ask":34.85,"AskSize":1700.0,"AskDate":"9/11/2014","AskTime":"4:05:06 PM","High52Weeks":37.48,"Low52Weeks":31.74,"Currency":"USD","TradingHalted":false,"Security":{"CIK":"0000732717","CUSIP":null,"Symbol":"T","ISIN":null,"Valoren":"2342429","Name":"AT&T Inc","Market":"NYSE","MarketIdentificationCode":"XNYS","MostLiquidExchange":true,"CategoryOrIndustry":"TelecomServices_Domestic"}},{"Outcome":"Success","Message":"Delay times are 15 mins for NYSE.","Identity":null,"Delay":0.0,"Date":"9/11/2014","Time":"4:01:56 PM","UTCOffset":-4.0,"Open":98.2,"Close":98.84,"High":99.08,"Low":97.71,"Last":98.84,"LastSize":67669.0,"Volume":1689176.0,"PreviousClose":99.14,"PreviousCloseDate":"9/10/2014","ChangeFromPreviousClose":-0.3,"PercentChangeFromPreviousClose":-0.303,"Bid":98.83,"BidSize":200.0,"BidDate":"9/11/2014","BidTime":"4:00:00 PM","Ask":98.85,"AskSize":300.0,"AskDate":"9/11/2014","AskTime":"4:00:00 PM","High52Weeks":104.5,"Low52Weeks":73.36,"Currency":"USD","TradingHalted":false,"Security":{"CIK":"0000004447","CUSIP":null,"Symbol":"HES","ISIN":null,"Valoren":"2552729","Name":"Hess Corp","Market":"NYSE","MarketIdentificationCode":"XNYS","MostLiquidExchange":true,"CategoryOrIndustry":"MajorIntegratedOilAndGas"}}';

//new string
//$string = '{"TradingHalted":false,"Low52Weeks":32.55,"High52Weeks":40.56,"AskSize":200,"Ask":33.64,"BidSize":200,"Bid":33.63,"PercentChangeFromPreviousClose":0.571,"ChangeFromPreviousClose":0.2,"PreviousClose":35,"Volume":24816209,"LastSize":3444703,"Last":35.2,"Low":34.73,"High":35.24,"Close":35.2,"Open":34.8688,"UTCOffset":-4,"Delay":0.031266,"Outcome":"Success","Security":{"MostLiquidExchange":true,"CategoryOrIndustry":"MajorTelecommunications","MarketIdentificationCode":"XNYS","Market":"NYSE","Name":"AT&T Inc","Valoren":"2342429","ISIN":"US00206R1023","Symbol":"T","CUSIP":"00206R102","CIK":"0000732717"},"Currency":"USD","AskTime":"5:44:06 PM","AskDate":"4/25/2018","BidTime":"5:44:06 PM","BidDate":"4/25/2018","PreviousCloseDate":"4/24/2018","Time":"4:00:00 PM","Date":"4/25/2018","Identity":"Request","Message":"Delay times are 15 mins for NYSE."}';

$string = '[{"TradingHalted":false,"Low52Weeks":139.13,"High52Weeks":171.13,"AskSize":30,"Ask":146.22,"BidSize":30,"Bid":146.19,"PercentChangeFromPreviousClose":0.261,"ChangeFromPreviousClose":0.38,"PreviousClose":145.56,"Volume":7326379,"LastSize":1548514,"Last":145.94,"Low":144.111,"High":146.4,"Close":145.94,"Open":145.79,"UTCOffset":-4,"Delay":0.0156391,"Outcome":"Success","Security":{"MostLiquidExchange":true,"CategoryOrIndustry":"InformationTechnologyServices","MarketIdentificationCode":"XNYS","Market":"NYSE","Name":"International Business Machines Corp","Valoren":"941800","ISIN":"US4592001014","Symbol":"IBM","CUSIP":"459200101","CIK":"0000051143"},"Currency":"USD","AskTime":"4:52:51 PM","AskDate":"4/25/2018","BidTime":"4:41:48 PM","BidDate":"4/25/2018","PreviousCloseDate":"4/24/2018","Time":"4:00:00 PM","Date":"4/25/2018","Identity":"Request","Message":"Delay times are 15 mins for NYSE."},{"TradingHalted":false,"Low52Weeks":32.55,"High52Weeks":40.56,"AskSize":1660,"Ask":33.71,"BidSize":100,"Bid":33.75,"PercentChangeFromPreviousClose":0.571,"ChangeFromPreviousClose":0.2,"PreviousClose":35,"Volume":25291217,"LastSize":3444703,"Last":35.2,"Low":34.73,"High":35.24,"Close":35.2,"Open":34.8688,"UTCOffset":-4,"Delay":0,"Outcome":"Success","Security":{"MostLiquidExchange":true,"CategoryOrIndustry":"MajorTelecommunications","MarketIdentificationCode":"XNYS","Market":"NYSE","Name":"AT&T Inc","Valoren":"2342429","ISIN":"US00206R1023","Symbol":"T","CUSIP":"00206R102","CIK":"0000732717"},"Currency":"USD","AskTime":"4:59:55 PM","AskDate":"4/25/2018","BidTime":"4:56:32 PM","BidDate":"4/25/2018","PreviousCloseDate":"4/24/2018","Time":"4:00:00 PM","Date":"4/25/2018","Identity":null,"Message":"Delay times are 15 mins for NYSE."}]';

$aValues = json_decode($string);

echo "<strong>Raw Results:</strong><br>";
print "<pre>";
print_r($aValues);
print"</pre>";
echo "<strong>---</strong><br>";


for ($nStock = 0; $nStock < sizeof($aValues); $nStock++){

	echo "<strong>Stock #".$nStock.":</strong><br>";

	$aStock = $aValues[$nStock];
	print "<pre>";
	print_r($aStock);
	print"</pre>";





    foreach($aStock as $key => $value)
            {
            $$key = $value;
            }
    print "<h1>".$Outcome."</h1>";




        echo "<strong>Stock #".$nStock." Security Data:</strong><br>";

	$aSecurity = $aStock->Security;
	print "<pre>";
	print_r($aSecurity);
	print "</pre>";





    foreach($aSecurity as $key => $value)
            {
            $$key = $value;
            }
    print "<h1>".$Name."</h1>";





	echo "<strong>---</strong><br>";

}

echo "<strong>Done!</strong><br>";

?>

