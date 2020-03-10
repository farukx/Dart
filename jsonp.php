<?php
$array1 = 
array(
    "type" => "Flexible",
    "flex" => 1,
    "child" => array(
        "type" => "Container",
        "child" => array(
            "type" => "Center",
            "child" => array(
                "type" => "NetworkImage",
                "src" => "",
            ) ,
        ) ,
    ) ,
 );

 $flex1 = 
 array(
    "type"=> "Flexible",
    "flex" => 1,
      "child" => array(
          "type" => "Container",
              "child" => array(
                  "type" => "Center",
   "child" => array(
   "type" => "Carousel",
   "seconds"=> 50,
   "indicator"=> true,
   "images" => array(

   ) ,
   ) ,
      ),),
      );
   
      $flex2 = 
      array(
         "type"=> "Flexible",
         "flex" => 1,
           "child" => array(
               "type" => "Container",
                   "child" => array(
                       "type" => "Center",
        "child" => array(
        "type" => "Carousel",
        "seconds"=> 5,
        "indicator"=> false,
        "images" => array(
         
        ) ,
        ) ,
           ),),
           );
    $flex3 = 
        array(
            "type"=> "Flexible",
            "flex" => 1,
            "child" => array(
                "type" => "Container",
                "child" => array(
                    "type" => "Center",
                    "child" => array(
                        "type" => "Text",
                        "data"=> "öşöşçişişğüşüğğ ş.ü şüiğç.şiçşiç.çöçöç ",

                    ),
                ),
            ),
        );
        
 $array2 = 
 array(
    "type" => "Flexible",
    "flex" => 1,
    "child" => array(
        "type" => "Container",
        "child" => array(
            "type" => "Column",
            "children" => array(
                $flex1,
                $flex3,
                
            ) ,
        ) ,
    ) ,
 );

$marks = array(
    "type" => "Container",
    // Ankit will act as key
    "child" => array(
        "type" => "Row",
        "children" => array(
            $array1,
            $array2,
        ),
    ) ,

);

$jsonData = json_encode($marks);

print_r($jsonData);
