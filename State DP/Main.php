<?php
include_once('State.php');
include_once('StartState.php');
include_once('StopState.php');
include_once('Context.php');
$context = new Context();
$startState = new StartState();
$startState->doAction($context);
print_r ($context->getState());

$stops = new StopState();
$stops->doAction($context);
print_r($context->getState());
?>