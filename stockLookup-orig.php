<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

// Make sure they passed a symbol
if (!isset($_REQUEST['symbol']) || $_REQUEST['symbol'] == ""){
	echo '
You must specify a symbol to look up (i.e. stocklookup.php?symbol=AAPL)
	';
	die(); // Just display message and quit
}

// Connect to the database
include "feed/dbconnect.php";

// Convert any dotted symbols to slashes
$symbol = str_replace(".", "/", trim($_REQUEST['symbol']));

// Look up the symbol record from the feed table
$query = "
	SELECT stock_feed.*, cusip_feed.CUSIP
	FROM stock_feed
	LEFT JOIN cusip_feed ON (stock_feed.Symbol = cusip_feed.Symbol)
	WHERE stock_feed.symbol = '".$symbol."'
		";
//echo $query;
$rs_row = mysqli_query($data_link, $query); //or die ("ERROR - Query '".$query."' Failed for DB ".$dbName." in MySQL - Process Aborted!");

// If it's found...
if (mysqli_num_rows($rs_row) > 0){
	// Grab the data
	$row = mysqli_fetch_assoc($rs_row);

	// Print the results
	echo '
Current feed data for '.strtoupper($_REQUEST['symbol']).':<br>
<table border="1">
	';

	// Step through all the fields in the result set and print 'em
	while ($fieldinfo = mysqli_fetch_field($rs_row)){
		echo '
<tr>
	<td align="right"><strong>'.$fieldinfo->name.':</strong></td>
	<td>'.$row[$fieldinfo->name].'</td>
</tr>
		';
	}

	// Close up the table
	echo '
</table>
	';

}else{

	// Bad symbol
	echo '
Symbol '.strtoupper($_REQUEST['symbol']).' Not Found.
	';
}

// Close up shop
mysqli_close($data_link);

?>