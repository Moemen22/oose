<?php
class Context{
	private $state;
	
    function __construct(){
	  $this->state = null;
	}
	function setState($state){
		$this->state = $state;
	}
	function getState()
	{
		return $this->state;
	}
}
?>