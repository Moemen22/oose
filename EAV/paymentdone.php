<?php
include_once('EAVpayemnt.php');
include_once('payemntoption.php');
session_start();
$result = id::selectall();
if(mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_array($result))
    {
        $idwanted= $row["Id"];
    }
}
$paymentId = $_SESSION["CurrentpaymentId"];
paymentmethod::create($paymentId,$idwanted);
$result = paymentmethod::selectall();
if(mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_array($result))
    {
        $idwanted= $row["Id"];
    }
}
$paymentvalue = $_POST["paymentvalues"];
$keys = array_keys($payemntvalues);
for($i=0;$i<count($payemntvalues);$i++)
{
    paymentmethodsvalue::create($idwanted,$paymentId,current($payemntvalue[$i]),$registerId);
}

?>