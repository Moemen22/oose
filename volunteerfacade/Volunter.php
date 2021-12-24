<?php
//namespace Structural\Facade;


//use Structural\Facade\ConverterLib\Animator;
//use Structural\Facade\ConverterLib\ColorCorrection;
//use Structural\Facade\ConverterLib\GIFConverter;
//use Structural\Facade\ConverterLib\JPGConverter;
//use Structural\Facade\ConverterLib\Photo;

class Volunteer
{
   public function informationsearcher(Type $Type)
   {
       $voulnter = new voulnter();
       $infsch = new infsch($voulnter);
       return $infsch->voulnter($Type);
   }
   public function Sorter(Type $Type)
   {
       $voulnter = new voulnter();
       $sorter = new sorter($voulnter);
       return $sorter->voulnter($Type);
   }
   public function drugsearcher(Type $Type)
   {
       $voulnter = new voulnter();
       $drugsch = new drugsch($voulnter);
       return $drugsch->voulnter($Type);
   }
   public function enteraunment(Type $Type)
   {
       $voulnter = new voulnter();
       $enter = new enter($voulnter);
       return $enter->voulnter($Type);
   }
   public function cleaner(Type $Type)
   {
       $voulnter = new voulnter();
       $cleaner = new cleaner($voulnter);
       return $cleaner->voulnter($Type);
   }
   public function teacherfacade(Type $Type)
   {
       $voulnter = new voulnter();
       $teacher = new teacher($voulnter);
       return $teacher->voulnter($Type);
   }
}
?>