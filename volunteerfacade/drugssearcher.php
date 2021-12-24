<?php
 class drugsearcher
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
     public function searching_meducuine()
    {
         return $this->Type;
    }

     public function validating_expiration()
     {
         return $this->Type;
     }
     public function giving_medicine()
     {
         return $this->Type;
     }
     function public checking_medicine_availabilty()
     {
         return $this->Type;
     }
     public function __toString()
     {
         return $this->value;
     }
 }
 
?>