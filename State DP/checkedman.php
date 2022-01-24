<?php
    include_once('State.php');
    class checkedman implements State{
        function doAction($context){
            $checker=true;

            if($paper==$valid)
            {
                $checker = true;
                echo"All the paper true";
            }
            else
            {
                $checker = false;
                echo"Something went wrong in this application";
            }
            $context->setState($this);
        }
    }
?>
