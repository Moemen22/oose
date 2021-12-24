<?php
    class techclass tech
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
        public function computer_basics()
       {
            return $this->Type;
       }
   
        public function how_to_use_internet()
        {
            return $this->Type;
        }
        public function how_to_make_projects()
        {
            return $this->Type;
        }
        public function __toString()
        {
            return $this->value;
        }
    }
?>