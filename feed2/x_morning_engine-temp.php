<?php
$url_string = '_Token=EF2662FA141B4DC086F6A72B2D15AD2C&IdentifierType=Symbol&Identifiers='.$string;
$opts = array('http'=>
        array('method' =>'POST',
                'port' =>'443',
                'header' =>'Content-type: application/x-www-form-urlencoded',
                'content' =>$url_string
                )
			    );
$context = stream_context_create($opts);
$file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or die ("Xignite API Not Responding");
$results = @stream_get_contents($file);
//Need to trim the last } off the string as it doesnt have a , after it and therefore does not get removed in the explode() thus the -2 in the substr()
//Also needed to trim the [ and ] from the front and back of the package handed to us from the API
$results = substr($results, 1, -2);
$json = explode("},", $results);
print $json;
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
    $mTimeStamp = time();
    $feed_update = "UPDATE `stock_feed` SET
            `Outcome` = '$Outcome',
            `Message` = '$Message',
            `Identity` = '$Identity',
            `Delay` = '$Delay',
            `Date` = '$Date',
            `Time` = '$Time',
            `UTCOffset` = '$UTCOffset',
            `Open` = '$Open',
            `Close` = '$Close',
            `High` = '$High',
            `Low` = '$Low',
            `Last` = '$Last',
            `LastSize` = '$LastSize',
            `Volume` = '$Volume',
            `PreviousClose` = '$PreviousClose',
            `PreviousCloseDate` = '$PreviousCloseDate',
            `ChangeFromPreviousClose` = '$ChangeFromPreviousClose',
            `PercentChangeFromPreviousClose` = '$PercentChangeFromPreviousClose',
            `Bid` = '$Bid',
            `BidSize` = '$BidSize',
            `BidDate` = '$BidDate',
            `BidTime` = '$BidTime',
            `Ask` = '$Ask',
            `AskSize` = '$AskSize',
            `AskDate` = '$AskDate',
            `AskTime` = '$AskTime',
            `High52Weeks` = '$High52Weeks',
            `Low52Weeks` = '$Low52Weeks',
            `Currency` = '$Currency',
            `TradingHalted` = '$TradingHalted',
            `CIK` = '$CIK',
            `CUSIP` = '$CUSIP',
            `ISIN` = '$ISIN',
            `Valoren` = '$Valoren',
            `Name` = '$Name',
            `Market` = '$Market',
            `MarketIdentificationCode` = '$MarketIdentificationCode',
            `MostLiquidExchange` = '$MostLiquidExchange',
            `CategoryOrIndustry` = '$CategoryOrIndustry' WHERE `Symbol` = '$Symbol';";
    mysqli_query($data_link, $feed_update);
    $symbol_update = "UPDATE `symbols_xignite` SET
    `Outcome` = '$Outcome',
    `Date` = '$Date' WHERE `Symbol` = '$Symbol';";
    mysqli_query($data_link, $symbol_update);
    }
?>
