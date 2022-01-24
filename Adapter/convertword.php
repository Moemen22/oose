<?php
include_once ("converter.php");
class convertword implements converter
{
    private $donar;
    private $donation;
    public function __construct($donar,$donation)
    {
        $this->donar =$donar;
        $this->donation = $donation;
    }
    
    public function convertexcel($name)
    {

    }

    public function convertword($name)
    {
        $File = fopen($name,"a+") or die("Couldn't open The file");
        $txtfile = "Word File";
        fwrite($File,$txtfile);
        fclose($File);
    }
}