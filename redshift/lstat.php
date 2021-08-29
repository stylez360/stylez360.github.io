<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

//set local time zone
date_default_timezone_set("America/New_York");

//include DB connections
include "PDO_dbconnect.php";

//custom date
$custom = "2017/06/22";

//get todays date
$today = date("Y/m/d");

//get yesterdays date
$yesterday = date("Y/m/d", strtotime( '-1 days' ) );

//This Attribute allows for multiple PDO queries to be run simutaniously
$fLink->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

//make fetch default to assoc only instead of both
$fLink->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$query = "SELECT * FROM `695_txt` WHERE `eventcd` LIKE 'LSTAT' AND `Date1` LIKE '$today' AND `exchgcntry` LIKE 'US' AND `localcode` NOT LIKE '% %'";

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
        $exchange = $record['mic'];
        $exchange_code = $record['exchgcd'];
        $cusip =  $record['uscode'];
        $changed = $record['changed'];
        $date1 = $record['Date1'];
        $date2 = $record['Date2'];
        $date3 = $record['Date3'];
        $rate1 = $record['Rate1'];
        $rate2 = $record['Rate2'];
        $currency = $record['Currency'];
        $field2 = $record['Field2'];
        $field3 = $record['Field3'];
        $field4 = $record['Field4'];
        $field5 = $record['Field5'];

        //assign unmatched vars to field names in target table
        $actionid = 'EDI'.$eventid.'_'.$eventcd.$created;
        $symbol = $localcode;
        $issue_date = $created;
        $update_date = $changed;
        $effective_date = $date1;
        $bankrupcy_type = 9;
        $record_date = $date2;
        $pay_date = $date3;
        $net_amount = $rate2;
        $gross_amount = $rate1;
        $frequency = "";
        $notes = "";
        $fb_aliaskey = "None";



        //query for id of stock_alias
            $sa_query = "SELECT count(*) as count, `uid`, `stock_status`, `stock_id` FROM `stock`.`stock_alias` WHERE `symbol` LIKE '$symbol' AND `current` = 1";
            print $sa_query;
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
                $stock_id = $sa_record['stock_id'];
                $status = $sa_record['stock_status'];
                }
        print '<h1>'.$uid.'</h1>';

        //check that the stock is not delisted
        if ($status != "delisted" && $count > 0)
            {
            //update old alias
            $update_alias_query = "UPDATE `stock`.`stock_alias` SET `current` = '0' WHERE `stock_alias`.`uid` = '$uid'";
            print "update_alias_update_sql - ".$update_alias_query."<br>";
             try{
                $uaq_rs = $fLink->prepare($update_alias_query);
                $uaq_rs->execute();
                }
                catch(PDOException $error){
                    // Log any error
                    //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                    //$aErrors[] = $error;
                    }
            //insert new record
            $insert_alias_query = "INSERT INTO `stock`.`stock_alias` (`uid`, `stock_id`, `symbol`, `date`, `name`, `stock_status`, `exchange`, `cusip`, `fb_stockkey`, `fb_aliaskey`, `sector`, `style`, `current`) VALUES ('', '$stock_id', '$localcode', '$effective_date', '$name', 'delisted', '$exchange', '$cusip', '', '', '', '', '1')";
            print "alias_insert_sql - ".$insert_alias_query."<br>";
            try{
                    $iaq_rs = $fLink->prepare($insert_alias_query);
                    $iaq_rs->execute();
                    }
                    catch(PDOException $error){
                        // Log any error
                        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                        //$aErrors[] = $error;
                        }
            //get the UID from the last query for use in the ca table
            $alias_id_query = "SELECT MAX(`uid`) as last_id FROM `stock`.`stock_alias`";
            try{
                    $aid_rs = $fLink->prepare($alias_id_query);
                    $aid_rs->execute();
                    }
                    catch(PDOException $error){
                        // Log any error
                        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                        //$aErrors[] = $error;
                        }
             foreach($aid_rs as $aid_record)
                {
                $alias_id = $aid_record['last_id'];
                }


            //insert ca
            $insert_query = "INSERT INTO `stock`.`remove_listing_ca` (`uid`, `action_id`, `symbol`, `name`, `cusip`, `issue_date`, `update_date`, `effective_date`, `exchange_code`, `delist_reason`, `notes`, `alias_id`, `fb_aliaskey`) VALUES ('', '$actionid', '$symbol', '$name', '$cusip', '$issue_date', '$update_date', '$effective_date', '$exchange_code', '17', '$notes', '$alias_id', '');";
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