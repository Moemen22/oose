<?php
include_once('State.php');
class StartState implements State{
	function doAction($context){
		echo "check that all the application is filled";
		$context->setState($this);
	}
}
?>
