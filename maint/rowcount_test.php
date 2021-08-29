<?php
ini_set('memory_limit','3072M');
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

date_default_timezone_set("America/New_York");

include "PDO_dbconnect.php";

function rowCount($query)
    {
    include "PDO_dbconnect.php";
    try
        {
        $rs_count = $fLink->prepare($query);
        $rs_count->execute();
        }
    catch(PDOException $error)
        {

        }
    $all = $rs_count->fetchAll();
    $num_rows =  count($all);
    return $num_rows;
    }
//get date one month ago
$date = date("Y/m/d", strtotime( '-1 month' ) )."%";
$query = "
        SELECT * FROM `EDI`.`695_txt` WHERE `changed` < '$date'
";
$num = rowCount($query);

print $num;

?>