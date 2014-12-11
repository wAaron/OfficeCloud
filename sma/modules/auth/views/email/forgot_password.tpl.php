<html>
<body>
	<img src="https://www.application.officecloud.com.au/assets/img/offcloud_logo4.png"/>
	<p>We have recevived a request to reset the password for <?php echo $identity;?></p>
    <p>&nbsp;</p>
	<p>Please click this link to <?php echo anchor('module=auth&view=reset_password&code='. $forgotten_password_code, 'Reset Your Password');?>.</p>
    <p>&nbsp;</p>
    <p>Thank you!</p>
    <p>&nbsp;</p>
    <p>This is a system generated email and replying to this email will not go anywhere. If you have any questions, Please contact Office Cloud.</p>
</body>
</html>