<?php
     class Sorter
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
      public function beds()
        {
             return $this->value;
     
         }
         public function medcine()
         {
             return $this->Type;
         }
         public function pharmcy_storage()
         {
             return $this->Type;
         }
         public function donation_storage()
         {
             return $this->Type;
         }
         public funtion cleaning_storage()
         {
             return $this->Type;
         }
         public function __toString()
         {
             return $this->Type;
         }
     }
     
?>