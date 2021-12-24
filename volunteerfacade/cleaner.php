<?php
 class cleaner
 {
     private string $volunter;
     public $Type;
 
     public function getvolunter()
    {
        return $this->volunter;
    }

     public function setvolunter($volunter): void
    {
         $this->volunter = $volunter;
    }
    //////////////////////////////////////////////////////////////////////
     public function bedrooms()
    {
         return $this->Type;
    }

     public function bathroom()
     {
         return $this->Type;
     }
     public function floors()
     {
         return $this->Type;
     }
     function public outside_building()
     {
         return $this->Type;
     }
     public function __toString()
     {
         return $this->value;
     }
 }
?>