<?php
print "Name Change";


//print $action_id;
?>
<table>
<form action="p_ischg.php" method="POST" target="_self">
<tr><td>Symbol:</td><td><input type="text" name="symbol"></td></tr>
<tr><td>Name:</td><td><input type="text" name="name"></td></tr>
<tr><td>CUSIP:</td><td><input type="text" name="cusip"></td></tr>
<tr><td>Issue Date:</td><td><input type="text" name="issue_date"> (YYYY-MM-DD)</td></tr>
<tr><td>Update Date:</td><td><input type="text" name="update_date"> (YYYY-MM-DD)</td></tr>
<tr><td>Effective Date:</td><td><input type="text" name="effective_date"> (YYYY-MM-DD)</td></tr>
<tr><td>Record Date:</td><td><input type="text" name="record_date"> (YYYY-MM-DD)</td></tr>
<tr><td>Pay Date:</td><td><input type="text" name="pay_date"> (YYYY-MM-DD)</td></tr>
<tr><td>Percent:</td><td><input type="text" name="percent"></td></tr>
<tr><td>Adjustment:</td><td><input type="text" name="adjustment"></td></tr>
<tr><td>Adjustment Date:</td><td><input type="text" name="adjustment_date"> (YYYY-MM-DD)</td></tr>
<tr><td style="vertical-align: top">Notes:</td><td><textarea name="notes" rows="4" cols="22"></textarea></td></tr>
<tr><td colspan="2" style="text-align: center"><input type="submit" value="Submit"></td></tr>
</form>
</table>
<?php

//$insert_query = "INSERT INTO `stock`.`bonus_issue_ca` (`uid`, `action_id`, `symbol`, `name`, `cusip`, `issue_date`, `update_date`, `effective_date`, `record_date`, `pay_date`, `percent`, `notes`, `alias_id`, `fb_aliaskey`) VALUES ('','".$actionid."','".$symbol."','".$name."','".$cusip."','".$issue_date."','".$update_date."','".$effective_date."','".$record_date."','".$pay_date."','".$percent."','".$notes."','".$alias_id."','".$fb_aliaskey."')";
            //print $insert_query;
                /*try{
                    $insert = $fLink->prepare($insert_query);
                    $insert->execute();
                    }
                    catch(PDOException $error){
                        // Log any error
                        //file_put_contents($pdo_log, "-----\rDate: ".date('Y-m-d H:i:s')."\rFile$
                        //$aErrors[] = $error;
                        }*/
?>