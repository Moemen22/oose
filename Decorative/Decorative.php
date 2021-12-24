<?php

Class Branch
{
    $ID;
    $Hotline;
    $Email;
    $No_Of_Floors;
    $No_Bed_Rooms_Per_Floor;

}
Class Floors extends Branch
{
    $No_Of_Rooms;
}

Class BedRoom extends Floors
{
    $Number_Of_Beds;
    $Available_Beds;
    $Unavailable_Beds;
    $Room_ID;
    $User_ID;
    function Available_Beds()
    {
        return $Available_Beds;
    }
}

    function add_new_orphan ()
    {
        $pO = new BedRoom(20,19,1,3,41);
        $Decorator = new BedRoom($po);
        $fdecorator = new Floors ($Decorator);
        $bdecorator = new Branch ($fdecorator);
        echo('No of Available Beds: ');
        echo($Decorator->Available_Beds());
    }
?>