<h1><?php echo $welcome; ?></h1>
 
<?php require_once '_form.php'; ?>

List <?php echo $this->linkTo("lakeHost", "index", "Lake Hosts"); ?><br>
Return <?php echo $this->linkTo("home","index","Home"); ?>