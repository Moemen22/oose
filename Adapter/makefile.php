<?php
include_once ("AdapterInterface.php");
class makefile implements AdapterInterface
{
    public $adapter;
    private $donar;
    private $donation;
    public function __construct($donar,$donation)
    {
        $this->donar = $donar;
        $this->donation = $donation;
    }

    public function req($extestion, $name)
    {
        if(strcasecmp($extestion,"word") ==0 || strcasecmp($extestion,"excel")==0)
        {
            $this->adapter = new Adapter ($extestion,$this->donar,$this->donation);
            $this->adapter->req($extestion,$name);
        }
        else
        {
            echo "invalid Extenstion";
        }
    }
}
?>