<?php

class ProxyImage implements ProxyInterface
{
    private RealImage $realImage;
    private $filename;

    public function ProxyImage($filename)
    {
        $this->filename = $filename;
    }
    public function Display()
    {
        if($this->realImage == null)
        {
            $realImage = new RealImage($this->filename);
        }
        $realImage.display();
    }
}




