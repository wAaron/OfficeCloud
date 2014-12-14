<?php
include ('../sma/config/database.php');

$vtigerConnection;
function vtigerDbConnect()
{
	GLOBAL $vtigerConnection;
	// Create connection
	$vtigerConnection = new mysqli ( vtiger_hostname, vtiger_username, vtiger_password, vtiger_database );

	// Check connection
	if ($vtigerConnection->connect_error)
	{
		die ( "Connection failed: " . $vtigerConnection->connect_error );
	}	

// 	echo "Record updated successfully";
// 	if (mysqli_query($vtigerConnection, $sql)) {
// 		echo "Record updated successfully";
// 	} else {
// 		echo "Error updating record: " . mysqli_error($vtigerConnection);
// 	}

// 	$sql = "UPDATE vtiger_products SET productno='PRO11' WHERE productid=6";
// 	mysqli_query($vtigerConnection, $sql);
// // 	mysqli_close($vtigerConnection);
	
	

	// echo "Connected successfully";
}
function cloudPusher($productID, $data)
{
	print_r ( $data );
	echo vtiger_username;
	echo "code is ", $data ['code'];
	echo "productID is ", $productID;
	
	GLOBAL $vtigerConnection;
	$sql = "UPDATE vtiger_products SET productname='Chrome100' WHERE productid=6";
	if(mysqli_query($vtigerConnection, $sql))
	{
		echo "Record updated successfully";
	}
 	mysqli_close($vtigerConnection);
	
// 	if ($result = $GLOBALS['vtigerConnection']->query ( "SELECT productname FROM vtiger_products" ))
// 	{
// 		printf ( "Select returned %d rows.\n", $result->num_rows );
		
// 		/* free result set */
// 		$result->close ();
// 	}
	

	return true;
}

?>