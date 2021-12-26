<?php

 include_once('Shape.php');
  include_once( 'Circle.php');
   include_once('Rectangle.php');
   include_once('Square.php');
   include_once('ShapeMaker.php');
class ShapeMaker
{
    public $circ;
    public $rect;
    public $sqr;
    function __construct() {
       $this->circ = new Circle();
        $this->rect = new Rectangle();
        $this->sqr = new Square();
    }
    function DrawCircle()
    {
      $this->circ->Draw();
    }
     function DrawRectangle()
    {
        $this->rect->Draw();
    }
    function DrawSquare()
    {
        $this->sqr->Draw();
    }
}

?>