<?php
 include_once('Shape.php');
  include_once( 'Circle.php');
   include_once('Rectangle.php');
   include_once('Square.php');
   include_once('ShapeMaker.php');
   
   $SM = new ShapeMaker();
   $SM->DrawCircle();
   $SM->DrawRectangle();
   $SM->DrawSquare();
?>
