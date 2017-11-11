//extrude

//linear_extrude(height=10,scale=0,twist=45)
//circle(r=10,$fn=100);

//MIRROR

/*mirror([1,0,0]){}

translate([5,0,0]) //-------------->original
cube([2,2,10],center=true);

mirror([1,0,0]){  //--------------->espejo 1
    translate([5,0,0])
    cube([2,2,10],center=true);
}

mirror([0,1,0]){    //-------------espejo 2
    translate([5,5,0])
    cube([2,2,10],center=true);
    
    mirror([1,0,0]){
    translate([5,5,0])  //------espejo del espejo 2
    cube([2,2,10],center=true);
}

}*/

//GENERAR MÓDULOS

/*module cuadrado(radio=10){
    square([radio,radio]);
}

use<cuadrado.scad>  //lo pone disponible
//include<cuadradi.scad> //lo dibuja
cuadrado(5);
*/




//EXTRUDE DIA 4

rotate_extrude($fn=30)
translate([20,0,0])
//square([10,10],center=true);
circle(r=10,$fn=30);