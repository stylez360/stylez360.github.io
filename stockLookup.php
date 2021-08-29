<?php
// This web browser utility returns the current pricing information for the specified stock.

// Define some system settings
date_default_timezone_set('America/New_York');

// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

// Set up the page
echo '
<head>
	<title>Stock Price Lookup Tool</title>
</head>
';

// Display the form
echo '
<form action="" name="stockLookup" id="stockLookup" method="GET">
	Enter Symbol:
	<input type="text" name="symbol" size="10" autofocus="autofocus" value="">
	<input type="submit">
</form>
';

// If the symbol was passed, show results
if (isset($_REQUEST['symbol']) && $_REQUEST['symbol'] != ""){

	// Connect to the database
	include "feed/dbconnect.php";

	// Convert any dotted symbols to slashes
//	$symbol = str_replace(".", "/", trim($_REQUEST['symbol']));
        $symbol = trim($_REQUEST['symbol']);

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
	<h2>Current Feed Data for '.strtoupper($_REQUEST['symbol']).':</h2>
	<table border = "1" cellpadding = "2" cellspacing = "0">
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
	<h2>Symbol '.strtoupper($_REQUEST['symbol']).' Not Found.</h2>
		';
	}

	// Close up shop
	mysqli_close($data_link);

}
?>
