<?php

//Set Database Variables
$dbHost = "192.168.111.211";
$dbName = "portfolio";
$dbUser = "marketocracy";
$dbPass = "KfabyZcbE3";

//Connect to portfolio DB / MySQL with PDO_MYSQL
try{
    $mLink = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
    $mLink->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(PDOException $error){
    // Log any error to /var/log/httpd/portfolio-pdo_log
    file_put_contents("/var/log/httpd/portfolio-pdo_log", "-----\rDate: ".date('Y-m-d H:i:s')."\rFile: ". __FILE__ ."\rLine Number: ". __LINE__ ."\rVars:\r".dump_vars(get_defined_vars())."\r", FILE_APPEND);
    die($error->getMessage());
}

$dbName = "feed2";

//Connect to feed_data DB / MySQL with PDO_MYSQL
try{
        $fLink = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
        $fLink->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
        $fLink->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);
}
catch(PDOException $error){
        // Log any error to /var/log/httpd/portfolio-pdo_log
        file_put_contents("/var/log/httpd/portfolio-pdo_log", "-----\rDate: ".date('Y-m-d H:i:s')."\rFile: ". __FILE__ ."\rLine Number: ". __LINE__ ."\rVars:\r".dump_vars(get_defined_vars())."\r", FILE_APPEND);
        die($error->getMessage());
}

$dbName = "reports";

//Connect to reports DB / MySQL with PDO_MYSQL
try{
        $rLink = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
        $rLink->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(PDOException $error){
        // Log any error to /var/log/httpd/portfolio-pdo_log
        file_put_contents("/var/log/httpd/portfolio-pdo_log", "-----\rDate: ".date('Y-m-d H:i:s')."\rFile: ". __FILE__ ."\rLine Number: ". __LINE__ ."\rVars:\r".dump_vars(get_defined_vars())."\r", FILE_APPEND);
        die($error->getMessage());
}

$dbName = "sites_minc";

//Connect to sites_minc DB / MySQL with PDO_MYSQL
try{
        $sLink = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
        $sLink->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(PDOException $error){
        // Log any error to /var/log/httpd/portfolio-pdo_log
        file_put_contents("/var/log/httpd/portfolio-pdo_log", "-----\rDate: ".date('Y-m-d H:i:s')."\rFile: ". __FILE__ ."\rLine Number: ". __LINE__ ."\rVars:\r".dump_vars(get_defined_vars())."\r", FILE_APPEND);
        die($error->getMessage());
}

$dbName = "mcrm_dev";

//Connect to MCRM DB / MySQL with PDO_MYSQL
try{
        $cLink = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
        $cLink->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch(PDOException $error){
        // Log any error to /var/log/httpd/portfolio-pdo_log
        file_put_contents("/var/log/httpd/portfolio-pdo_log", "-----\rDate: ".date('Y-m-d H:i:s')."\rFile: ". __FILE__ ."\rLine Number: ". __LINE__ ."\rVars:\r".dump_vars(get_defined_vars())."\r", FILE_APPEND);
        die($error->getMessage());
}

?>