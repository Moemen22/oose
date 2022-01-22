<?php

  class DeployCommand implements Command
  {
      /**
       * @var GitReceiver
       */
      public function __construct(workersReciver $workersReceiver)
      {
          $this->gitReciver =$workersReceiver;
      }
    public function execute()
    {
        $this->gitReciver->getGitlog();
        $this->gitReciver->come_time();
        $this->gitReciver->Do_Work();
        $this->gitReciver->going_time();
        $this->gitReciver->Go_Meeting();
    }
  }
?>
