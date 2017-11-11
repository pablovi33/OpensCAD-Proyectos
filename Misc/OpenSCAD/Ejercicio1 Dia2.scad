//Ejercicio 1 dia2

//DIFFERENCE
difference(){    
rotate(45)
translate([20,0,0])
sphere(r=5,$fn=50);

rotate(45)
translate([20,0,0])
cylinder(r=10,$fn=20,h=1);}

translate([0,20,0])
difference(){
rotate(45)
translate([20,0,0])
cylinder(r=10,$fn=20,h=1);
    
rotate(45)
translate([20,0,0])
sphere(r=5,$fn=50);
}

//INTERSECTION
translate([-20,0,0])
intersection(){
rotate(45)
translate([20,0,0])
sphere(r=5,$fn=50);

rotate(45)
translate([20,0,0])
cylinder(r=10,$fn=20,h=1);}  
    
//UNION
translate([0,-20,0])
union(){
sphere(r=5,$fn=50);
cylinder(r=3,$fn=30,h=20);
}

/* Comandos:
difference(){}  --->CORTA
union(){}---------->UNE
intersection(){}--->DEJA EL ÁREA EN COMÚN
*/
