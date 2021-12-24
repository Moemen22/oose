<?php
class religion
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
    public function concepts()
   {
        return $this->Type;
   }

    public function how_to_pray()
    {
        return $this->Type;
    }
    public function religional_books()
    {
        return $this->Type;
    }
    public function __toString()
    {
        return $this->value;
    }
}
?>