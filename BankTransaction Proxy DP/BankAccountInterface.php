<?php
    namespace Login_v1\BanckTransaction_Proxy_DP;

    interface BankAccountInterface
    {
        public function deposit(int $amount);
        public function withdraw(int $amount);
        public function getBalance();
    }
?>