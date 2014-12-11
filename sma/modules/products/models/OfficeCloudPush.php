<?php
// 	$dbh1 = mysql_connect($hostname, $username, $password); 
// 	$dbh2 = mysql_connect($hostname, $username, $password, true); 
	
// 	mysql_select_db('database1', $dbh1);
// 	mysql_select_db('database2', $dbh2);
	function cloudPusher($productID, $data)
	{
		print_r($data);
		echo "code is ", $data['code'];
 		echo "productID is ", $productID;
		return true;
	}


?>