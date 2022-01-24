<?php
class Workers implements \SplObserver
{
    public function update(\SplSubject $subject): void
    {
        if ($subject->state == 0 || $subject->state >= 2) {
            echo "Workers: Finally!! We will take our money\n";
        }
    }
}
?>