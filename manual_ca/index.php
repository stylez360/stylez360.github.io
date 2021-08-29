<!DOCTYPE html>

<html>

<head>
  <title>Manual Corporate Action Admin</title>
</head>

<body>
<form id="1" name="ca_type" action="ca_engine.php" method="POST" target="_self">
<select name="ca_type" size="1">
  <option value="TKOVR">Acquisition</option>
  <option value="BKRP">Bankruptcy</option>
  <option value="DIVC">Cash Dividend</option>
  <option value="ICC">CUSIP Change</option>
  <option value="PRCHG">Exchange Change</option>
  <option value="ISCHG">Name Change</option>
  <option value="NLIST">New Listing</option>
  <option value="LSTAT">Delist</option>
  <option value="DMRGR">Spinoff</option>
  <option value="DIVS">Stock Dividend</option>
  <option value="DIST">Distribution</option>
  <option value="LCC">Symbol Change</option>
  <option value="CONSD">Reverse Stock Split</option>
  <option value="SD">Stock Split</option>
  <option value="BON">Bonus Issue</option>
</select>
<input type="submit" value="Submit">
</form>
<?php

?>

</body>
</html>