<?php
    $SITE_URL   = 'http://www.example-store.com';
    $SITE_NAME  = 'ExampleStore.com';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<head>
	<title><?php echo $SITE_NAME; ?>  - Your password has been changed</title>
</head>
<body>
<?php echo $this->fetch('content'); ?>
</body>
</html>