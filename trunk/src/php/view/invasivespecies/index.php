<h1><?php echo $welcome ?></h1>

<?php

echo $this->buttonTo("invasiveSpecies","editInvasiveSpecies", "Edit");
echo $this->buttonTo("invasiveSpecies","newInvasiveSpecies", "New");

?><br>
Return <?php echo $this->linkTo("home","index","Home"); ?>