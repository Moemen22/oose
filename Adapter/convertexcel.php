<?php

class convertexcel implements converter
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
        $File = fopen($name,"a+") or die("Couldn't open The file");
        $txtfile = "Excel File";
        fwrite($File,$txtfile);
        fclose($File);
    }

    public function convertword($name)
    {

    }
}