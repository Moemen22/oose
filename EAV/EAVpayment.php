<?php
class Donationswitch{
    public function paymentmethoud($paymentid)
    {
        $con = DbConnection::getInstance();
        if (!$con)
        {
            die('could not connect: ' . mysqli_error($con));
        }
        $sql = "select p.id as paymentid,p.payemntoption as Type,p.optionid as OptionId from payemntmethoudoption p inner join payment pmo on pmo.Id = p.OptionId inner join options o on o.Id = p.OptionId where p.PaymentId = $paymentid ";
        $result = mysqli_query($con, $sql);
        $num = mysqli_num_rows($result);
        $payment = array();
        if($num>0)
        {
            while($row = mysqli_fetch_array($result))
            {        
                $id = $row;
                array_push($peyment,$id);
            }
        }
        return $payment; 
    }
}
?>
