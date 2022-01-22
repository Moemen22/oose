<?php

class workersReciver
{
    private $gitlog = [];


    /**
     * @return array
     */
    public function getGitlog(): array
    {
        return $this->gitlog;
    }

    public function come_time()
    {
        $this->gitLog [] = comming_time();
    }
     
    public function going_time()
    {
        $this->gitLog [] = going_time();
    }
    public function Do_Work()
    {
        $this->gitLog [] = doing_work();
    }
    public function Go_Meeting()
    {
        $this-> gitLog [] = going_to_meetings();
    }

}
?>