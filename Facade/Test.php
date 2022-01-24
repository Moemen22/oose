<?php
include_once('ElectricBill.php');
include_once('Gas Bill.php');
include_once('Rent.php');
include_once('GovernemntTaxes.php');
include_once('StaffSalary.php');

class Facade
{
    protected $subsystem1;
    protected $subsystem2;
    protected $subsystem3;
    protected $subsystem4;
    protected $subsystem5;

    public function __construct(
        Subsystem1 $subsystem1 = null,
        Subsystem2 $subsystem2 = null,
        Subsystem3 $subsystem3 = null,
        Subsystem4 $subsystem4 = null,
        Subsystem5 $subsystem5 = null
    ) {
        $this->subsystem1 = $subsystem1 ?: new Subsystem1();
        $this->subsystem2 = $subsystem2 ?: new Subsystem2();
        $this->subsystem3 = $subsystem3 ?: new Subsystem3();
        $this->subsystem4 = $subsystem4 ?: new Subsystem4();
        $this->subsystem5 = $subsystem5 ?: new Subsystem5();
    }

    public function operation(): string
    {
        $result = "Check what supposed to pay? \n";
        $result .= $this->subsystem1->operation1();
        $result .= $this->subsystem2->operation1();
        $result .= $this->subsystem3->operation1();
        $result .= $this->subsystem4->operation1();
        $result .= $this->subsystem5->operation1();
        $result .= "Checked Successfully!! it will paied Automatic... Please Wait!\n";
        $result .= $this->subsystem1->operation2();
        $result .= $this->subsystem2->operation2();
        $result .= $this->subsystem3->operation2();
        $result .= $this->subsystem4->operation2();
        $result .= $this->subsystem5->operation2();
        $result .= "All Fees Paied\n";

        return $result;
    }
}

function clientCode(Facade $facade)
{
    echo $facade->operation();
}

$subsystem1 = new Subsystem1();
$subsystem2 = new Subsystem2();
$subsystem3 = new Subsystem3();
$subsystem4 = new Subsystem4();
$subsystem5 = new Subsystem5();
$facade = new Facade($subsystem1, $subsystem2,$subsystem3,$subsystem4,$subsystem5);
clientCode($facade);
?>