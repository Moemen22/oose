<?php
include_once('State.php');
class StartState implements State{
	function doAction($context){
		echo "Player is in start state";
		$context->setState($this);
	}
}
?>