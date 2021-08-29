<?php
// Tell me when things go sideways
error_reporting(E_ALL);
ini_set('display_errors', '1');

//set local time zone
date_default_timezone_set("America/New_York");

//include DB connections
include "PDO_dbconnect.php";

//print_r($_REQUEST);
foreach($_REQUEST as $key => $value)
    {
    $$key = strip_tags($value);
    }
//print $name;
$symbol = strtoupper($symbol);
$actionid = date("Ymd:His");
$stock_dividend_type = 0;
$fb_aliaskey = "";

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
                $alias_id = $sa_record['uid'];
                $status = $sa_record['stock_status'];
                }
if ($status != "delisted" && $count > 0)
    {
    print $symbol;
    $insert_query = "INSERT INTO `stock`.`stock_split_ca` (`uid`, `action_id`, `symbol`, `name`, `cusip`, `issue_date`, `update_date`, `effective_date`, `split_type`, `split_terms`, `split_ratio`, `notes`, `alias_id`, `fb_aliaskey`) VALUES ('','".$actionid."','".$symbol."','".$name."','".$cusip."','".$issue_date."','".$update_date."','".$effective_date."','3001','".$split_terms."','".$split_ratio."','".$notes."','".$alias_id."','".$fb_aliaskey."')";
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
        print "invalid stock";
        }







?>