<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

//set local time zone
date_default_timezone_set("America/New_York");

//include DB connections
include "PDO_dbconnect.php";

//custom date
$custom = "2017/09/15";

//get todays date
$today = date("Y/m/d");

//get yesterdays date
$yesterday = date("Y/m/d", strtotime( '-1 days' ) );

//This Attribute allows for multiple PDO queries to be run simutaniously
$fLink->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

//make fetch default to assoc only instead of both
$fLink->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$query = "SELECT * FROM `695_txt` WHERE `eventcd` LIKE 'TKOVR' AND `Date1` LIKE '$today' AND `Field20` != '' AND `exchgcntry` LIKE 'US' AND `localcode` NOT LIKE '% %'";

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
        $acquisition_name = $record['issuername'];
        $name = $record['Field3'];
        $changed = $record['changed'];
        $date1 = $record['Date1'];
        $date2 = $record['Date2'];
        $date3 = $record['Date3'];
        $date4 = $record['Date4'];
        $rate1 = $record['Rate1'];
        $rate2 = $record['Rate2'];
        $currency = $record['Currency'];
        $field4 = $record['Field4'];
        $field5 = $record['Field5'];
        $field20 = $record['Field20'];
        $cusip =  $record['uscode'];
        $paytype = $record['Paytype'];
        //acq_type
        switch ($paytype) {
            case "S":
            $acquisition_type = "2";
            $cash_amount = "0";
            $cash_type = "0";
            $share_amount = $record['RatioNew'];
            $share_type = "1";
            break;
            case "C":
            $acquisition_type = "1";
            $cash_amount = $rate2;
            $cash_type = "1";
            $share_amount = "0";
            $share_type = "0";
            break;
            case "B":
            $acquisition_type = "3";
            $cash_amount = $rate2;
            $cash_type = "1";
            $share_amount = $record['RatioNew'];
            $share_type = "1";
            break;
            }
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
        $debt_amount = "0";
        $debt_type = "";
        $acquisition_status = "3";



        //query for id of stock_alias
            $sa_query = "SELECT count(*) as count, `uid`, `stock_status` FROM `stock`.`stock_alias` WHERE `symbol` LIKE '$symbol' AND `current` = 1";
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
                $status = $sa_record['stock_status'];
                }
        print '<h1>'.$uid.'</h1>';

        //check that the stock is not delisted
        if ($status != "delisted" && $count > 0)
            {
            //copy alias to new record and set current = 0
            $current_alias_query = "UPDATE `stock_alias` SET `current` = '0' WHERE `stock_alias`.`uid` = '$uid'";
             try{
                $cars = $fLink->prepare($current_alias_query);
                $cars->execute();
                }
                catch(PDOException $error){
                    // Log any error
                    //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                    //$aErrors[] = $error;
                    }
            //query for current record
            $alias_query = "SELECT * FROM `stock`.`stock_alias` WHERE `uid` LIKE '$uid'";
            print "alias query - ".$alias_query."<br>";
            try{
                $ars = $fLink->prepare($alias_query);
                $ars->execute();
                }
                catch(PDOException $error){
                    // Log any error
                    //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                    //$aErrors[] = $error;
                    }
            foreach($ars as $arecord)
		{
		$count = 0;
		print "<pre>";
        print_r($arecord);
        print "</pre>";

        // assign vars needed
        $a_uid = $arecord['uid'];
        $a_stock_id = $arecord['stock_id'];
        $a_symbol = $arecord['symbol'];
        //$a_date = $arecord['date'];
        $a_date = $date4;
        $a_name = $arecord['name'];
        $a_stock_status = "delisted";
        $a_exchange = $arecord['exchange'];
        //$a_cusip = $arecord['cusip'];
        $a_cusip = $field5;
        $a_fb_stockkey = $arecord['fb_stockkey'];
        $a_fb_aliaskey = $arecord['fb_aliaskey'];
        $a_sector = $arecord['sector'];
        $a_style = $arecord['style'];
        //$a_current = $arecord['current'];
        $a_current = 1;

        }





            //insert new record
            $insert_alias_query = "INSERT INTO `stock`.`stock_alias` (`uid`, `stock_id`, `symbol`, `date`, `name`, `stock_status`, `exchange`, `cusip`, `fb_stockkey`, `fb_aliaskey`, `sector`, `style`, `current`) VALUES
('', '$a_stock_id', '$a_symbol', '$a_date', '$a_name', '$a_stock_status', '$a_exchange', '$field5', '$a_fb_stockkey', '$a_fb_aliaskey', '$a_sector', '$a_style', '$a_current')";
            print "alias_insert_sql - ".$insert_alias_query."<br>";
            try{
                    $insert = $fLink->prepare($insert_alias_query);
                    $insert->execute();
                    }
                    catch(PDOException $error){
                        // Log any error
                        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                        //$aErrors[] = $error;
                        }
            //update old alias record  setting current = 0
            $old_alias_update = "UPDATE `stock`.`stock_alias` SET `current` = '0' WHERE `stock_alias`.`uid` = '$uid';";
            print "alias_update_sql - ".$old_alias_update."<br>";
            try{
                    $insert = $fLink->prepare($old_alias_update);
                    $insert->execute();
                    }
                    catch(PDOException $error){
                        // Log any error
                        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                        //$aErrors[] = $error;
                        }
            //print "add record";
            $insert_query = "INSERT INTO `stock`.`acquisition_ca` (`uid`, `action_id`, `symbol`, `name`, `cusip`, `issue_date`, `update_date`, `effective_date`, `acquisition_symbol`, `acquisition_name`, `acquisition_type`, `acquisition_flag`, `cash_amount`, `cash_type`, `share_amount`, `share_type`, `debt_amount`, `debt_type`, `acquisition_status`, `currency`, `total_acquisition_value`, `notes`, `alias_id`, `fb_aliaskey`) VALUES ('', '$actionid', '$symbol', '$acquisition_name', '$name', '$cusip', '$issue_date', '$update_date', '$effective_date', '$field20', '$acquisition_type', '1', '$cash_amount', '$cash_type', '$share_amount', '$share_type', '$debt_amount', '$debt_type', '$acquisition_status', '$currency', '$rate1', '$notes', '$alias_id', '$fb_aliaskey');";
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