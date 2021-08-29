<?php
include "dbconnect.php";
$array = array("XNAS","XNYS","XASE","ARCX","XOTC","OOTC");
$total = 0;
foreach($array as $kkey => $exc)
    {
    $url_string = 'Exchange='.$exc.'&StartSymbol=G&EndSymbol=L&_Token=EF2662FA141B4DC086F6A72B2D15AD2C';
    $opts = array('http'=>
            array('method' =>'POST',
                    'port' =>'443',
                    'header' =>'Content-type: application/x-www-form-urlencoded',
                    'content' =>$url_string
                )
                );
    $context = stream_context_create($opts);
    $file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/ListSymbols', 'rb', false, $context) or die ("Merchant    Services Not Responding");
    $results = @stream_get_contents($file);
    $results = substr($results, 1, -2);
    $results = explode('[',$results);
    $results = substr($results[1], 1, -1);
    $pieces = explode('},{', $results);
    foreach($pieces as $key => $value)
        {
        $value = '{'.$value.'}';
        $obj = json_decode($value, TRUE);
        foreach($obj as $key => $value)
            {
            $$key = $value;
            }
        $total++;
        $symbol_insert = "INSERT INTO `symbols_xignite` (
            `uid`,
            `Symbol`,
            `Currency`,
            `Name`)
            VALUES (
            '',
            '".$Symbol."',
            '".$Currency."',
            '".$Name."'
            );";
        mysqli_query($data_link, $symbol_insert);
        }
    }
?>