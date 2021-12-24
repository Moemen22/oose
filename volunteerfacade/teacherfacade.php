<?php
//namespace Structural\Facade;


//use Structural\Facade\ConverterLib\Animator;
//use Structural\Facade\ConverterLib\ColorCorrection;
//use Structural\Facade\ConverterLib\GIFConverter;
//use Structural\Facade\ConverterLib\JPGConverter;
//use Structural\Facade\ConverterLib\Photo;

class Teacher
{
   public function arabic(Type $Type)
   {
       $Teacher = new Teacher();
       $arabic = new arabic($teacher);
       return $arabic->Teacher($Type);
   }
   public function math(Type $Type)
   {
       $Teacher = new Teacher();
       $math = new math($teacher);
       return $math->Teacher($Type);
   }
   public function religion(Type $Type)
   {
       $Teacher = new Teacher();
       $religion = new religion($teacher);
       return $religion->Teacher($Type);
   }
   public function english(Type $Type)
   {
       $Teacher = new Teacher();
       $english = new english($teacher);
       return $english->Teacher($Type);
   }
   public function sport(Type $Type)
   {
       $Teacher = new Teacher();
       $sport = new sport($teacher);
       return $sport->Teacher($Type);
   }
   public function conversational(Type $Type)
   {
       $Teacher = new Teacher();
       $conversational = new conversational($teacher);
       return $conversational->Teacher($Type);
   }
   public function tech(Type $Type)
   {
       $Teacher = new Teacher();
       $tech = new tech($teacher);
       return $tech->Teacher($Type);
   }
}
?>