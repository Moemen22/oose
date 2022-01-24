<?php

namespace RefactoringGuru\Observer\Conceptual;

class Subject implements \SplSubject
{
    public $state;
    private $observers;

    public function __construct()
    {
        $this->observers = new \SplObjectStorage();
    }

    public function Newmail(\SplObserver $observer): void
    {
        echo " Start a meeting \n Manager = I have a good news for all \n";
        $this->observers->attach($observer);
    }

    public function done(\SplObserver $observer): void
    {
        $this->observers->detach($observer);
        echo "Meeting has ended\n";
    }

    public function notify(): void
    {
        echo "That we reached to the first 1000 dounet\n";
        foreach ($this->observers as $observer) {
            $observer->update($this);
        }
    }

    public function someBusinessLogic(): void
    {
        echo "\n We all important to this place.....\n";
        $this->state = rand(0, 10);
        echo "Thankfull for yours efforts {$this->state}\n";
        $this->notify();
    }
}
$subject = new Subject();
$o1 = new Invoices();
$subject->attach($o1);
$o2 = new Workers();
$subject->attach($o2);
$subject->someBusinessLogic();
$subject->someBusinessLogic();
$subject->detach($o2);
$subject->someBusinessLogic();
?>