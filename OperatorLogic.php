<?php
function divide($dividend, $divisor) {
    $sign = (($dividend < 0) ^
             ($divisor < 0)) ? -1 : 1;
             
    $dividend = abs($dividend);
    $divisor = abs($divisor);
     
    $quotient = 0;
    while ($dividend >= $divisor)
    {
        $dividend -= $divisor;
        ++$quotient;
    }
    if($sign==-1) $quotient=-$quotient;
    return $quotient;
}
 
$a = 5;
$b = 2;
echo divide($a, $b);

?>
