<?php
include_once('State.php');
class StopState implements State{
	function doAction($context){
		echo "This application is Signature by Chairman of the board of directors";
		$context->setState($this);
	}
}
?>