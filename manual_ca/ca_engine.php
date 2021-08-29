<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

//set local time zone
date_default_timezone_set("America/New_York");

//include DB connections
include "PDO_dbconnect.php";


//print "ca_engine.php";
//print_r($_REQUEST);
$type = $_REQUEST['ca_type'];


switch ($type) {
    case 'TKOVR':
        //echo "Acquisition";
        include "tkovr.php";
        break;
    case 'BKRP':
        //echo "Bankruptcy";
        include "bkrp.php";
        break;
    case 'DIVC':
        //echo "Cash Dividend";
        include "divc.php";
        break;
    case 'ICC':
        //echo "CUSIP Change";
        include "icc.php";
        break;
    case 'PRCHG':
        //echo "Exchange Change";
        include "prchg.php";
        break;
    case 'ISCHG':
        //echo "Name Change";
        include "ischg.php";
        break;
    case 'NLIST':
        //echo "New Listing";
        include "nlist.php";
        break;
    case 'LSTAT':
        //echo "Delist";
        include "lstat.php";
        break;
    case 'DMRGR':
        //echo "Spinoff";
        include "dmrgr.php";
        break;
    case 'DIVS':
        //echo "Stock Dividend";
        include "divs.php";
        break;
    case 'DIST':
        //echo "Distribution";
        include "dist.php";
        break;
    case 'LCC':
        //echo "Symbol Change";
        include "lcc.php";
        break;
    case 'CONSD':
        //echo "Reverse Stock Split";
        include "consd.php";
        break;
    case 'SD':
        //echo "Stock Split";
        include "sd.php";
        break;
    case 'BON':
        //echo "Bonus Issue";
        include "bon.php";
        break;
}
?>