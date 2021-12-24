<?php
    class conversotional;
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
        public function communicate()
       {
            return $this->Type;
       }
        public function __toString()
        {
            return $this->value;
        }
    }
?>