<?php
//$string = '{"Outcome":"Success","Message":"Delay times are 15 mins for NYSE.","Identity":"Request","Delay":0.6412031,"Date":"9/11/2014","Time":"4:00:15 PM","UTCOffset":-4.0,"Open":34.61,"Close":34.85,"High":34.88,"Low":34.5,"Last":34.85,"LastSize":725338.0,"Volume":16018392.0,"PreviousClose":34.7,"PreviousCloseDate":"9/10/2014","ChangeFromPreviousClose":0.15,"PercentChangeFromPreviousClose":0.432,"Bid":34.76,"BidSize":1000.0,"BidDate":"9/11/2014","BidTime":"4:05:06 PM","Ask":34.85,"AskSize":1700.0,"AskDate":"9/11/2014","AskTime":"4:05:06 PM","High52Weeks":37.48,"Low52Weeks":31.74,"Currency":"USD","TradingHalted":false,"Security":{"CIK":"0000732717","CUSIP":null,"Symbol":"T","ISIN":null,"Valoren":"2342429","Name":"AT&T Inc","Market":"NYSE","MarketIdentificationCode":"XNYS","MostLiquidExchange":true,"CategoryOrIndustry":"TelecomServices_Domestic"}},{"Outcome":"Success","Message":"Delay times are 15 mins for NYSE.","Identity":null,"Delay":0.0,"Date":"9/11/2014","Time":"4:01:56 PM","UTCOffset":-4.0,"Open":98.2,"Close":98.84,"High":99.08,"Low":97.71,"Last":98.84,"LastSize":67669.0,"Volume":1678743.0,"PreviousClose":99.14,"PreviousCloseDate":"9/10/2014","ChangeFromPreviousClose":-0.3,"PercentChangeFromPreviousClose":-0.303,"Bid":98.83,"BidSize":200.0,"BidDate":"9/11/2014","BidTime":"4:00:00 PM","Ask":98.85,"AskSize":300.0,"AskDate":"9/11/2014","AskTime":"4:00:00 PM","High52Weeks":104.5,"Low52Weeks":73.36,"Currency":"USD","TradingHalted":false,"Security":{"CIK":"0000004447","CUSIP":null,"Symbol":"HES","ISIN":null,"Valoren":"2552729","Name":"Hess Corp","Market":"NYSE","MarketIdentificationCode":"XNYS","MostLiquidExchange":true,"CategoryOrIndustry":"MajorIntegratedOilAndGas"}}';
$string ='{"Outcome":"Success","Message":"Delay times are 15 mins for NYSE.","Identity":"Request","Delay":0.21402089999999999,"Date":"9/11/2014","Time":"4:00:15 PM","UTCOffset":-4.0,"Open":34.61,"Close":34.85,"High":34.88,"Low":34.5,"Last":34.85,"LastSize":725338.0,"Volume":16022416.0,"PreviousClose":34.7,"PreviousCloseDate":"9/10/2014","ChangeFromPreviousClose":0.15,"PercentChangeFromPreviousClose":0.432,"Bid":34.76,"BidSize":1000.0,"BidDate":"9/11/2014","BidTime":"4:05:06 PM","Ask":34.85,"AskSize":1700.0,"AskDate":"9/11/2014","AskTime":"4:05:06 PM","High52Weeks":37.48,"Low52Weeks":31.74,"Currency":"USD","TradingHalted":false,"Security":{"CIK":"0000732717","CUSIP":null,"Symbol":"T","ISIN":null,"Valoren":"2342429","Name":"AT&T Inc","Market":"NYSE","MarketIdentificationCode":"XNYS","MostLiquidExchange":true,"CategoryOrIndustry":"TelecomServices_Domestic"}},{"Outcome":"Success","Message":"Delay times are 15 mins for NYSE.","Identity":null,"Delay":0.0,"Date":"9/11/2014","Time":"4:01:56 PM","UTCOffset":-4.0,"Open":98.2,"Close":98.84,"High":99.08,"Low":97.71,"Last":98.84,"LastSize":67669.0,"Volume":1689176.0,"PreviousClose":99.14,"PreviousCloseDate":"9/10/2014","ChangeFromPreviousClose":-0.3,"PercentChangeFromPreviousClose":-0.303,"Bid":98.83,"BidSize":200.0,"BidDate":"9/11/2014","BidTime":"4:00:00 PM","Ask":98.85,"AskSize":300.0,"AskDate":"9/11/2014","AskTime":"4:00:00 PM","High52Weeks":104.5,"Low52Weeks":73.36,"Currency":"USD","TradingHalted":false,"Security":{"CIK":"0000004447","CUSIP":null,"Symbol":"HES","ISIN":null,"Valoren":"2552729","Name":"Hess Corp","Market":"NYSE","MarketIdentificationCode":"XNYS","MostLiquidExchange":true,"CategoryOrIndustry":"MajorIntegratedOilAndGas"}}';
//$json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
$json = explode("},", $string);
//$json[0] = $json[0]."}";
foreach($json as $key => $value)
    {
    print $key." = ".$value."<br>";
    $value = $value."}";
    $obj = json_decode($value, TRUE);
    print "<pre>";
    print_r($obj);
    print "</pre>";
    var_dump(json_decode($value));
    }








//print $json[0];
//$json[1] = $json[1]."}";
//print $json[1];
//var_dump(json_decode($json[0]));
//var_dump(json_decode($json[0], true));
$obj = json_decode($json[0], TRUE);
//print $obj['Last'];
$obj1 = json_decode($json[1], TRUE);
//print $obj1['Last'];
//print $obj1->{'Last'};
?>