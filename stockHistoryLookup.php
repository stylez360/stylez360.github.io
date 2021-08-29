<?php
// This web browser utility returns the current pricing information for the specified stock.

// Define some system settings
date_default_timezone_set('America/New_York');

// Tell me when things go sideways
//error_reporting(E_ALL);
//ini_set('display_errors', '1');

// Function to test if passed string is a valid date
function isValidDate($dateString){
	// Create a date object
	$date = date_create($dateString);
	// Check for creation errors (or warnings)
	$aErrors = date_get_last_errors();
	// If there are none, it's a valid date
	return $aErrors["warning_count"] == 0 && $aErrors["error_count"] == 0;
}

// Set up the page
echo '
<head>
	<title>Stock Price Lookup Tool</title>
</head>
';

// Display the form
echo '
<form action="" name="stockLookup" id="stockLookup" method="GET">
	Enter Date:
	<input type="text" name="date" size="10" autofocus="autofocus" value="'.$_REQUEST['date'].'">
	...And Symbol:
	<input type="text" name="symbol" size="10" value="'.$_REQUEST['symbol'].'">
	<input type="submit">
</form>

<span style="font-size:9pt">*NOTE - This process can, at times, take awhile to complete. Please be patient.</span>
';

// If the symbol was passed, show results
if (isset($_REQUEST['symbol']) && $_REQUEST['symbol'] != ""){

	if (!isset($_REQUEST['date']) || $_REQUEST['date'] == "" || !isValidDate($_REQUEST['date'])){

		echo "<h3>Invalid Date</h3>";

	}else{

		// Connect to the database
		include "feed/dbconnect.php";

		// Create a formatted date from the passed value (for comparisons)
		$date = date("m/d/Y", strtotime($_REQUEST['date']));

		// Convert any dotted symbols to slashes
		$symbol = str_replace(".", "/", trim($_REQUEST['symbol']));

		// Look up the symbol record from the feed table
		// Use HAVING clause instead of WHERE for quicker conversion of the timestamp to a date string (and to utilize the Date alias created in the SELECT statement)
		$query = "
			SELECT FROM_UNIXTIME(mTimeStamp, '%m/%d/%Y') AS `Date`, Symbol, Last AS `Last Price`
			FROM stock_feed_history
			HAVING Symbol = '".$symbol."'
			AND `Date` = '".$date."'
			ORDER BY mTimeStamp DESC
			LIMIT 1
		";
//		echo $query;

		$rs_row = mysqli_query($data_link, $query); //or die ("ERROR - Query '".$query."' Failed for DB ".$dbName." in MySQL - Process Aborted!");

		// If it's found...
		if (mysqli_num_rows($rs_row) > 0){
			// Grab the data
			$row = mysqli_fetch_assoc($rs_row);

			// Print the results
			echo '
		<h2>Feed History Data for '.strtoupper($_REQUEST['symbol']).':</h2>
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
		<h2>Pricing for Symbol '.strtoupper($_REQUEST['symbol']).' Not Found for '.$date.'.</h2>
			';
		}

		// Close up shop
		mysqli_close($data_link);

	}
}
?>