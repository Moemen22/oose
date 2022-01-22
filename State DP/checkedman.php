<?php
    include_once('State.php');
    $checker=true;
    class checkedstate implements State{
        function doAction($context){
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
            echo "Player is in stop state";
            $context->setState($this);
        }
    }
?>