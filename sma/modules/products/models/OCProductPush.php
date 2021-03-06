<?php
include ('../sma/config/database.php');

$vtigerConnection;
$officeCloudConnection;
function vtigerDbConnect()
{
	/* connecting to office cloud database */
	GLOBAL $officeCloudConnection;
	
	// Create connection
	// $officeCloudConnection = new mysqli ( $db ['default'] ['hostname'], $db ['default'] ['root'], $db ['default'] ['password'], $db ['default'] ['database']);
	$officeCloudConnection = new mysqli ( "localhost", "root", '', "ocdev" );
	
	// Check connection
	if ($officeCloudConnection->connect_error)
	{
		die ( "Connection failed: " . $officeCloudConnection->connect_error );
	}
	
	/* connecting to vtiger database */
	GLOBAL $vtigerConnection;
	
	// Create connection
	$vtigerConnection = new mysqli ( vtiger_hostname, vtiger_username, vtiger_password, vtiger_database );
	
	// Check connection
	if ($vtigerConnection->connect_error)
	{
		die ( "Connection failed: " . $vtigerConnection->connect_error );
	}
}
function editProductsPush($productID, $data = array())
{
	// print_r ( $data );
	// echo vtiger_username;
	// echo "productID is ", $productID;
	GLOBAL $vtigerConnection;
	
	$code = $data ['code'];
	$name = $data ['name'];
	$category_id = $data ['category_id'];
	$subcategory_id = $data ['subcategory_id'];
	$unit = $data ['unit'];
	$size = $data ['size'];
	$cost = $data ['cost'];
	$price = $data ['price'];
	$alert_quantity = $data ['alert_quantity'];
	$tax_rate = $data ['tax_rate'];
	$track_quantity = $data ['track_quantity'];
	$cf1 = $data ['cf1'];
	$cf2 = $data ['cf2'];
	$cf3 = $data ['cf3'];
	$cf4 = $data ['cf4'];
	$cf5 = $data ['cf5'];
	$cf6 = $data ['cf6'];
	$details = $data ['details'];
	
	/* Pushing product update to vtiger from office cloud */
	$sql = "UPDATE vtiger_products SET product_no='$code'";
	if (mysqli_query ( $vtigerConnection, $sql ))
	{
		echo "Record updated successfully";
	}
	
	/* Pushing product update to vtiger from office cloud */
	$sql = "UPDATE vtiger_products SET productname='$name' WHERE product_no='$code'";
	if (mysqli_query ( $vtigerConnection, $sql ))
	{
		echo "Record updated successfully";
	}
	mysqli_close ( $vtigerConnection );
	
	// if ($result = $GLOBALS['vtigerConnection']->query ( "SELECT productname FROM vtiger_products" ))
	// {
	// printf ( "Select returned %d rows.\n", $result->num_rows );
	
	// /* free result set */
	// $result->close ();
	// }
	return true;
}
function addProductsPush($data = array())
{
	GLOBAL $vtigerConnection;
	print_r ( $data );
	
	$code = mysql_real_escape_string ( $data ['code'] );
	$name = mysql_real_escape_string ( $data ['name'] );
	$category_id = mysql_real_escape_string ( $data ['category_id'] );
	$subcategory_id = mysql_real_escape_string ( $data ['subcategory_id'] );
	$unit = floatval ( $data ['unit'] );
	$size = mysql_real_escape_string ( $data ['size'] );
	$cost = mysql_real_escape_string ( $data ['cost'] );
	$price = floatval ( $data ['price'] );
	$alert_quantity = mysql_real_escape_string ( $data ['alert_quantity'] );
	$tax_rate = mysql_real_escape_string ( $data ['tax_rate'] );
	$track_quantity = mysql_real_escape_string ( $data ['track_quantity'] );
	$cf1 = mysql_real_escape_string ( $data ['cf1'] );
	$cf2 = mysql_real_escape_string ( $data ['cf2'] );
	$cf3 = mysql_real_escape_string ( $data ['cf3'] );
	$cf4 = mysql_real_escape_string ( $data ['cf4'] );
	$cf5 = mysql_real_escape_string ( $data ['cf5'] );
	$cf6 = mysql_real_escape_string ( $data ['cf6'] );
	$details = mysql_real_escape_string ( $data ['details'] );
	
	$id = mysql_insert_id ();
	$sql = "INSERT INTO vtiger_products (product_no, productname, usageunit, unit_price)
VALUES ('$code','$name','$unit','$price')";
	
	if (mysqli_query ( $vtigerConnection, $sql ))
	{
		echo "Record updated successfully";
	}
	mysqli_close ( $vtigerConnection );
	
	return true;
}
function deleteProductPush($code)
{
	GLOBAL $vtigerConnection;
	$sql = "DELETE FROM vtiger_products WHERE product_no='$code'";
	$result = mysqli_query ( $vtigerConnection, $sql );
	if (! $result)
	{
		echo 'Could not run query: ' . mysql_error ();
		exit ();
	}
	$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	$productid = $row['productid'];
	print_r("productid is : ");
	print_r($productid);
	

	// $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	// $code = mysql_real_escape_string ($row["code"]);
	// print_r("Prudt code is ");
	// print_r($row["code"]);
	
	// $sql = "INSERT INTO vtiger_products (productcode)
	// VALUES ('$code')";
	
	// mysqli_close ($vtigerConnection);
	
	// $sql = "DELETE FROM vtiger_products WHERE product_no='$code'";
	mysqli_close ( $vtigerConnection );
	return true;
}
function getProductCode($id)
{
	GLOBAL $officeCloudConnection;
	
	$id = mysql_real_escape_string ( $id );
	print_r ( "id is : " );
	print_r ( $id );
	
	$sql = "SELECT CODE FROM products WHERE id = $id";
	$result = mysqli_query ( $officeCloudConnection, $sql );
	if (! $result)
	{
		echo 'Could not run query: ' . mysql_error ();
		exit ();
	}
	$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	$code = $row['CODE'];
	print_r("code is : ");
 	print_r($code);
 	mysqli_close ( $officeCloudConnection );
	return $code;
	
// 	$row = mysql_fetch_row ( $result );
// 	echo "code is : ";
// 	print_r($row);


	              
	// if ($result == true)
	              // {
	              // echo "Record updated successfully";
	              // $row = mysqli_fetch_array ( $result, MYSQLI_ASSOC );
	              // $code = mysql_real_escape_string ( $row ["code"] );
	              // print_r ( "Prudt code is " );
	              // print_r ( $row ["code"] );
	              // }
	              
	// $sql = "DELETE FROM vtiger_products WHERE product_no='$code'";
}

?>