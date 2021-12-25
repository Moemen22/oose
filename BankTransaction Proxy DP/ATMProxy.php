<?php
    namespace Login_v1\BanckTransaction_Proxy_DP;

    class ATMProxy extends BankAccount implements BankAccountInterface
    {
        private $balance = null;
    
        public function getBalance()
        {
            return $this->balance = parent::getBalance();
        }
    }
?>