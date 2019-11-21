<?php
	$arrayvals = $_POST['input_arrayvals']; 
	$cakearray = explode(",", $arrayvals);
	$cakeheader = "";
	$cakecontent = "";
		foreach($cakearray as $value){
			$cakecontent .= $value;
			$cakeheader .= strlen($value) . ",";
		}
	$cakeheader = trim($cakeheader, ",");
	$finalstring = $cakeheader . "|" . $cakecontent;
?>
<h4>PHP</h4>
<strong>PHPCake:</strong><div id="bakedcake">
<?php
    echo $finalstring;
?>
</div>
<br />
<strong>Cake Header:</strong>
<div id="cakeheader">
<?php
    echo $cakeheader;
?>
</div>
<br />
<strong>Cake Content</strong>
<div id="cakecontent">
<?php
    echo $cakecontent;
?>
</div>


<form>
    <?php
    echo '<input type="hidden" name="stringcontent" id="stringcontent" value="' . $finalstring . '" />'
    ?>
    
<button ic-post-to="php_unbake.php" ic-target="#viewport-bottom" type="submit" id="btn_unbake" name="btn_unbake" class="btn btn-danger" type="button">Unbake the cake</button>
</form>