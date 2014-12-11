<?php
include ('../sma/config/database.php');
function vtigerDbConnect()
{
	$vtigerConnection = mysql_connect ( vitger_hostname, vtiger_username, vtiger_password );
	// $dbh2 = mysql_connect($hostname, $username, $password, true);
	
	mysql_select_db ( vtiger_database, $vtigerConnection );
	// mysql_select_db('database2', $dbh2);
}
function cloudPusher($productID, $data)
{
	print_r ( $data );
	echo vtiger_username;
	echo "code is ", $data ['code'];
	echo "productID is ", $productID;
	return true;
}

?>