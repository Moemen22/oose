<?php
    public function sendMail($observer)
    {
        $ID_Payment = $observer->getpayment()->getID();
        $Payment = Mage::getModel('Cash/Obstacles')->load($ID_Payment);

        try {
            $emailTemplate = Mage::getModel('core/email_template');
            $emailTemplate->loadDefault('send_mail');
            $emailTemplate->setTemplateSubject('SITE.COM: You Have New Order');

            $salesData['email'] = 'example@site.com';
            $salesData['name'] = Mage::getStoreConfig('trans_email/ident_general/name');

            $emailTemplate->setSenderName($salesData['name']);
            $emailTemplate->setSenderEmail($salesData['email']);

            $emailTemplateVariables['username'] = $_order->getCustomerName();
            $emailTemplateVariables['shipping_address'] = $_order->getShippingAddress()->format('html');
            $emailTemplateVariables['shipping_description'] = $_order->getShippingDescription();
            $emailTemplateVariables['order_id'] = $_order->getIncrementId();
            $emailTemplateVariables['creating_time'] = $_order->getCreatedAtFormated('long');
            $emailTemplateVariables['is_not_virtual'] = $_order->getIsNotVirtual();

            $emailTemplate->setType('html');
            $emailTemplate->send($salesData['email'], $_order->getStoreName(), $emailTemplateVariables);

            Mage::log('Success! Email was sent.');

        } catch (Exception $e) {
            Mage::logException($e);
        }
        return $this;
    }
?>