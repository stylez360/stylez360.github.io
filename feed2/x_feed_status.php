<?php
//update feed_status
$update_sql = "UPDATE feed_status SET `x_timestamp` = '$end_ts', `x_number_of_symbols` = '$count', `x_duration_of_cycle` = '$cycle_time', `x_feed_running` = '1' WHERE `uid` = '1';";
mysqli_query($data_link, $update_sql);
//insert feed_history
$insert_sql = "INSERT INTO `feed_history_xignite` (`uid`, `timestamp`, `number_of_symbols`, `duration_of_cycle`, `feed_running`) VALUES ('', '$end_ts', '$count', '$cycle_time', '1');";
mysqli_query($data_link, $insert_sql);
?>