<?php

class Invoices implements \SplObserver
{
    public function update(\SplSubject $subject): void
    {
        if ($subject->state < 3) {
            echo "Invoice: Congratulations.\n";
        }
    }
}
?>