
<html>
<body>
	<img src="https://www.application.officecloud.com.au/assets/img/offcloud_logo4.png"/>
	<p>Activate account for <?php echo $identity;?></p>
    <p>&nbsp;</p>
    <p>Please click this link to <?php echo anchor('auth/activate/'. $id .'/'. $activation, 'Activate Your Account');?>.</p>
    <p>&nbsp;</p>
    <p>Thank you!</p>
    <p>&nbsp;</p>
    <p>This is a system generated email and replying to this email will not go anywhere. If you have any questions, Please contact Office Cloud.</p>
    
</body>
</html>
