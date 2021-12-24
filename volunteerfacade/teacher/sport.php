<?php
 class sports
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
     public function football()
    {
         return $this->Type;
    }

     public function basketball()
     {
         return $this->Type;
     }
     public function tennis()
     {
         return $this->Type;
     }
     function public gymenstic()
     {
         return $this->Type;
     }
     public function __toString()
     {
         return $this->value;
     }
 }
?>