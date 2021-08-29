<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

//set local time zone
date_default_timezone_set("America/New_York");

//include DB connections
include "PDO_dbconnect.php";

//custom date
$custom = "2017/06/15";

//get todays date
$today = date("Y/m/d");

//get yesterdays date
$yesterday = date("Y/m/d", strtotime( '-1 days' ) );

//This Attribute allows for multiple PDO queries to be run simutaniously
$fLink->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

//make fetch default to assoc only instead of both
$fLink->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$query = "SELECT * FROM `695_txt` WHERE `eventcd` LIKE 'DIST' AND `Date1` LIKE '$today' AND `exchgcntry` LIKE 'US' AND `localcode` NOT LIKE '% %'";

print $query;

try{
        $rs = $fLink->prepare($query);
        $rs->execute();
}
catch(PDOException $error){
        // Log any error
        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
        //$aErrors[] = $error;
}
foreach($rs as $record)
		{
		$count = 0;
		print "<pre>";
        print_r($record);
        print "</pre>";

        // assign vars needed
        $eventid = $record['eventid'];
        $eventcd = $record['eventcd'];
        $created = str_replace("/", "", $record['created']);
        $localcode = $record['localcode'];
        $name = $record['issuername'];
        $changed = $record['changed'];
        $date1 = $record['Date1'];
        $date2 = $record['Date2'];
        $date3 = $record['Date3'];
        //$rate1 = $record['Rate1'];
        //$rate2 = $record['Rate2'];
        $ratio_old = $record['RatioOld'];
        $ratio_new = $record['RatioNew'];
        $currency = $record['Currency'];

        //assign unmatched vars to field names in target table
        $actionid = 'EDI'.$eventid.'_'.$eventcd.$created;
        $symbol = $localcode;
        $issue_date = $created;
        $update_date = $changed;
        $effective_date = $date1;
        $record_date = $date2;
        $pay_date = $date3;
        $stock_dividend_type = 0;
        $percent = $ratio_new / $ratio_new * 100;
        $adjustment = $ratio_new;
        $adjustment_date = $date1;
        $dividend_symbol = $symbol;
        //$net_amount = $rate2;
        //$gross_amount = $rate1;
        //$frequency = "";
        $notes = "";
        $fb_aliaskey = "None";


        //query for id of stock_alias
            $sa_query = "SELECT count(*) as count, `uid`, `stock_status` FROM `stock`.`stock_alias` WHERE `symbol` LIKE '$symbol' AND `current` = 1";

            try{
                $sa_rs = $fLink->prepare($sa_query);
                $sa_rs->execute();
            }
            catch(PDOException $error){
                    // Log any error
                    //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                    //$aErrors[] = $error;
            }
            foreach($sa_rs as $sa_record)
                {
                $count = $sa_record['count'];
                $uid = $sa_record['uid'];
                $alias_id = $sa_record['uid'];
                $status = $sa_record['stock_status'];
                }
        print '<h1>'.$uid.'</h1>';

        //check that the stock is not delisted
        if ($status != "delisted" && $count > 0)
            {
            //print "add record";
            $insert_query = "INSERT INTO `stock`.`distribution_ca` (`uid`, `action_id`, `symbol`, `name`, `issue_date`, `update_date`, `effective_date`, `record_date`, `pay_date`, `stock_dividend_type`, `percent`, `dividend_symbol`, `adjustment`, `adjustment_date`, `notes`, `alias_id`, `fb_aliaskey`) VALUES ('','".$actionid."','".$symbol."','".$name."','".$issue_date."','".$update_date."','".$effective_date."','".$record_date."','".$pay_date."','".$stock_dividend_type."','".$percent."','".$dividend_symbol."','".$adjustment."','".$adjustment_date."','".$notes."','".$alias_id."','".$fb_aliaskey."')";
            print $insert_query;
                try{
                    $insert = $fLink->prepare($insert_query);
                    $insert->execute();
                    }
                    catch(PDOException $error){
                        // Log any error
                        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                        //$aErrors[] = $error;
                        }
            }
            else
                {
                print "don't add";
                }
        }
?>