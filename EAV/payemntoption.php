<?php
session_start(); 
require_once('EAVpayment.php');
require_once('payemntdone.php');
header('Content-Type: application/json');
$results = array();
$paymentoptions=new paymentmethoudoption();
$results['result'] = $paymentoptions->payemntmethoud( $_GET['paymentId']);
$_SESSION["CurrentpaymentId"]=$_GET['paymentId'];
$json=json_encode($results);
echo($json);
?>