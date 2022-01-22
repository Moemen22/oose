<?php

class RealImage implements  ProxyInterface
{
    private  $filename;
    public function RealImage($filename)
    {
       $this->filename = $filename;
        $this->loadFromDisk($filename);
    }

    public function Display()
    {
        echo ("Displaying" + $this->filename);
    }

    private function loadFromDisk($filename)
    {
        echo ("Loading" + $this->filename);
    }
}