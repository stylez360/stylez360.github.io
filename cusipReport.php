<?php
// This web browser executed script builds a list of stocks with CUSIPs as a downloadable CSV (named as .txt at Marty's specific request).

// Define some system settings
date_default_timezone_set('America/New_York');

// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

// Connect to the database
include "feed/dbconnect.php";

// Output headers so that the file is downloaded rather than displayed
//header('Content-Type: text/csv; charset=utf-8');
//header('Content-Disposition: attachment; filename=CUSIPReport_'.date("Ymd").'.csv');
header('Content-Type: text/txt; charset=utf-8');
header('Content-Disposition: attachment; filename=CUSIPReport_'.date("Ymd").'.txt');

// create a file pointer connected to the output stream
$output = fopen('php://output', 'w');

// output the column headings
fputcsv($output, array('Symbol', 'Name', 'CUSIP'));

// Build list of all stocks with assigned CUSIPs
$query = "
	SELECT stock_feed.Symbol, stock_feed.Name, cusip_feed.CUSIP
	FROM stock_feed
	LEFT JOIN cusip_feed ON (stock_feed.Symbol = cusip_feed.Symbol)
	WHERE cusip_feed.CUSIP <> ''
	AND cusip_feed.CUSIP IS NOT NULL
	AND cusip_feed.CUSIP <> 'N/A'
";
//echo $query;
$rs_CUSIPs = mysqli_query($data_link, $query); //or die ("ERROR - Query '".$query."' Failed for DB ".$dbName." in MySQL - Process Aborted!");

while ($row = mysqli_fetch_assoc($rs_CUSIPs)){
	fputcsv($output, $row);
}

// Close up shop
mysqli_close($data_link);

?>