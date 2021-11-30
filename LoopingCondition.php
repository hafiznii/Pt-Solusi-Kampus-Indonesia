<?php

$batas = 50;

for ($x = 1; $x <= $batas; $x++){
    if ($x % 15 == 0){
        echo "FooBar"."<br/>";
    }
    elseif ($x % 3 == 0){
        echo "Foo"."<br/>";
    }
    elseif ($x % 5 == 0){
        echo "Bar"."<br/>";
    }
    else{
        echo x;
    }
}


?>
