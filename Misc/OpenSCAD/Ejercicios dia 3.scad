/*--------------------------------------------------
*********************EJERCICIOS 1 DIA 3*************
--------------------------------------------------*/

//EJERCICIO 1

//----------------------for-------------------------
/*PARAMETRO=4;
for(i=[1:8]){
    rotate(45*i)
    translate([PARAMETRO,0,0])
    cube([3,3,3]);
}
*/

//EJERCICIO 2
for(i=[0:7]){
    rotate(45*i)
    translate([PARAMETRO*i,PARAMETRO*i,0])
    cube([3,3,3]);
}

//EJERCICIO 3

parametro=7;
    for (i=[1:parametro]){
        rotate((360/parametro)*i)
        translate([0.7*parametro,0,0])
        cube([3,3,3],center=true);
    }
//---------------------if------------------------

//EJERCICIO 4
    
radio=7;

espiral=1;

if(espiral==0){
    for(i=[0:12]){
        rotate(45*i)
        translate([radio,0,0])
        cube([3,3,3]);*/