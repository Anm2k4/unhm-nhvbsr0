<h1><?php echo $welcome ?></h1>

<?php

echo $this->buttonTo("lakeHost","editLakeHost", "Edit");
echo $this->buttonTo("lakeHost","newLakeHost", "New");

?><br>
Return <?php echo $this->linkTo("home","index","Home"); ?>

