<?php
$string = "NAV,NAV.PD,NBHC,NBL,NBLX,NBR,NC,NCI,NCLH,NCR,NCS,NE,NEE,NEE.PQ,NEE.PR,NEM,NEP,NETS,NEU,NEWM,NEWR,NEXA,NFG,NFX,NGL,NGL.PB,NGLS.PA,NGS,NGVC,NGVT,NHI,NI,NINE,NJR,NKE,NL,NLS,NLSN,NLY,NLY.PC,NLY.PD,NLY.PE,NLY.PF,NLY.PG,NM,NM.PG,NMFC,NMK.PB,NMK.PC,NMM,NNA,NNI,NNN,NNN.PE,NNN.PF,NOA,NOC,NOMD,NOV,NOW,NP,NPK,NPO,NPTN,NR,NRE,NRG,NRP,NRT,NRZ,NS,NS.PA,NS.PB,NS.PC,NSA,NSA.PA,NSC,NSH,NSM,NSP,NTB,NTP,NTR,NUE,NUS,NVGS,NVR,NVRO,NVTA,NWE,NWHM,NWL,NWN,NWY,NX,NXRT,NYCB,NYCB.PA,NYCB.PU,NYLD,NYLD.A,NYRT,NYT,O,OA,OAK,OAKS,OAKS.PA,OAS,OBE,OC,OCIP,OCN,ODC,OEC,OFC,OFG,OFG.PA,OFG.PB,OFG.PD,OGE,OGS,OHI,OI,OII,OIS,OKE,OLN,OLP,OMAD.U,OMAM,OMC,OMF,OMI,OMN,ONDK,OOMA,OPY,OR,ORA,ORC,ORCL,ORI,ORN,OSB,OSG,OSK,OUT,OXM,OXY,OZM,P,PAA,PAG,PAGP,PAH,PANW,PAR,PAY,PAYC,PB,PBA,PBF,PBFX,PBH,PBI,PCG,PDM,PDS,PE,PEB,PEB.PC,PEB.PD,PEG,PEI,PEI.PB,PEI.PC,PEI.PD,PEN,PER,PES,PF,PFE,PFGC,PFH,PFS,PFSI,PG,PGEM,PGH,PGR,PGRE,PGTI,PH,PHH,PHM,PHX,PII,PIR,PIY,PJC,PJT,PK,PKD,PKE,PKG,PKI,PLD,PLNT,PLOW,PLT,PM,PMT,PMT.PA,PMT.PB,PNC,PNC.PQ,PNM,PNR,PNW,POL,POR,POST,PPG,PPL,PQ,PQG,PRA,PRE.PF,PRE.PG,PRE.PH,PRE.PI,PRGO,PRI,PRLB,PRO,PRTY,PRU,PSA,PSA.PA,PSA.PB,PSA.PC,PSA.PD,PSA.PE,PSA.PF,PSA.PG,PSA.PU,PSA.PX,PSA.PY,PSA.PZ,PSB,PSB.PW,PSB.PX,PSTG,PSX,PSXP,PUK.PA,PUMP,PVG,PVH,PWR,PX,PXD,PYS,PYT,PZN,QCP,QEP,QGEN,QHC,QSR,QTM,QTS,QTWO,QUAD,QUOT,R,RACE,RAD,RAS,RAS.PA,RAS.PB,RAS.PC,RBA,RBC,RCI,RCL,RDC,RDN,RE,REG,REN,RES,RESI,REV,REVG,REX,REXR,REXR.PA,REXR.PB";
$url_string = '_Token=EF2662FA141B4DC086F6A72B2D15AD2C&IdentifierType=Symbol&Identifiers='.$string;
$opts = array('http'=>
        array('method' =>'POST',
                'port' =>'80',
                'header' =>'Content-type: application/x-www-form-urlencoded',
                'content' =>$url_string
                )
			);
$context = stream_context_create($opts);
$file = fopen('http://globalquotes.xignite.com/v3/xGlobalQuotes.json/GetGlobalDelayedQuotes', 'rb', false, $context) or die ("Xignite API Not Responding");
$results = @stream_get_contents($file);

print_r($results);

print "<br><br><br>";
//Need to trim the last } off the string as it doesnt have a , after it and therefore does not get removed in the explode() thus the -2 in the substr()
//Also needed to trim the [ and ] from the front and back of the package handed to us from the API
$results = substr($results, 1, -2);
$json = explode("},", $results);
foreach($json as $key => $value)
    {
    $value = $value."}";
    $obj = json_decode($value, TRUE);
    $PreviousClose = "";
    foreach($obj as $key => $value)
            {
            $$key = $value;
            }
    foreach($obj['Security'] as $key => $value)
            {
            $$key = addslashes($value);
            }
    //update for each symbol
    $mTimeStamp = time();
    $feed_update = "UPDATE `stock_feed` SET `Date` = '$Date', `Time` = '$Time', `Open` = '$Open', `Close` = '$Close', `High` = '$High', `Low` = '$Low', `Last` = '$Last', `LastSize` = '$LastSize', `Volume` = '$Volume', `PreviousClose` = '$PreviousClose', `PreviousCloseDate` = '$PreviousCloseDate', `ChangeFromPreviousClose` = '$ChangeFromPreviousClose', `PercentChangeFromPreviousClose` = '$PercentChangeFromPreviousClose', `Bid` = '$Bid', `BidSize` = '$BidSize', `BidDate` = '$BidDate', `BidTime` = '$BidTime', `Ask` = '$Ask', `AskSize` = '$AskSize', `AskDate` = '$AskDate', `AskTime` = '$AskTime', `High52Weeks` = '$High52Weeks', `Low52Weeks` = '$Low52Weeks', `TradingHalted` = '$TradingHalted', `CIK` = '$CIK', `Valoren` = '$Valoren', `mTimeStamp` = '$mTimeStamp' WHERE `Symbol` = '$Symbol';";
print $feed_update;
    //mysqli_query($data_link, $feed_update);
    //insert into stock_feed_history
    $history_sql = "INSERT INTO `stock_feed_history` (`uid`, `Symbol`, `Last`, `mTimeStamp`) VALUES ('', '$Symbol', '$Last', '$mTimeStamp');";
    //mysqli_query($data_link, $history_sql);

    }
?>
