<?php
 class enterainmernt
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
    /////////////////////////////////////////////////////////////////////////////////////////////////////////
     public function playing_with_children()
    {
         return $this->Type;
    }

     public function watching_tv_w_children()
     {
         return $this->Type;
     }
     public function discovering_new_places()
     {
         return $this->Type;
     }
     public function __toString()
     {
         return $this->value;
     }
 }
?>