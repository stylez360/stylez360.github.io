<?php
//$num_of_requests -> number_of_symbols
//$end_ts -> timestamp
//$cycle_time -> duration_of_cycle

//update feed_status
$update_sql = "UPDATE feed_status SET `timestamp` = '$end_ts', `number_of_symbols` = '$count', `duration_of_cycle` = '$cycle_time', `feed_running` = '1' WHERE `uid` = '1';";
mysqli_query($data_link, $update_sql);
//insert feed_history
$insert_sql = "INSERT INTO `feed_history` (`uid`, `timestamp`, `number_of_symbols`, `duration_of_cycle`, `feed_running`) VALUES ('', '$end_ts', '$count', '$cycle_time', '1');";
mysqli_query($data_link, $insert_sql);
?>