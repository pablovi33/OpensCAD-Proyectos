
baseRanger=20;
alturaRanger=6;
anchoRanger=10;
resolucion=12;
dif=2;

module detalle(){
    translate([anchoRanger-dif,2*baseRanger,anchoRanger-dif])
rotate([0,45,0])
cube([10,2*baseRanger,10],center=true);

mirror([1,0,0]){
translate([anchoRanger-dif,2*baseRanger,anchoRanger-dif])
rotate([0,45,0])
cube([10,2*baseRanger,10],center=true);
}
}



//union modulos y arco
union(){
for(i=[0:11]){
rotate(i*30)
difference(){


translate([0,2*baseRanger,0])
cube([10,baseRanger,10],center=true);

detalle();

}//fin diferencia
}//fin for


//arco
difference(){
   cylinder(r=40,h=3,center=true,$fn=resolucion);
   cylinder(r=35,h=6,center=true,$fn=resolucion);
}
//fin arco
}//fin union modulos y arco

/*
//cubo de centro
cube([10,10,10],center=true);

//barra conectora
translate([0,baseRanger,0])
cube([5,2*baseRanger,5],center=true);

//ranger1
rotate([0,90,0])
translate([-26,1,-anchoRanger/2])
linear_extrude(height=anchoRanger)
polygon(points=[[0,0],[baseRanger,0],[baseRanger,alturaRanger]]);

//ranger2
mirror([0,1,0]){
rotate([0,90,0])
translate([-26,1,-anchoRanger/2])
linear_extrude(height=anchoRanger)
polygon(points=[[0,0],[baseRanger,0],[baseRanger,alturaRanger]]);
}

//bases
translate([0,0,3])
rotate([0,0,90])
cube([anchoRanger/2,3*alturaRanger,baseRanger/2],center=true);

//fin bases

//desembarco1
translate([10,0,3])
cube([alturaRanger,anchoRanger,baseRanger],center=true);

//motores
translate([10,5,7])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
mirror([0,0,1]){

translate([10,5,3])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
}

mirror([0,1,0]){
   translate([10,5,7])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
mirror([0,0,1]){

translate([10,5,3])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
}

}

//fin desembarco1

mirror([1,0,0]){
 //desembarco1
translate([10,0,3])
cube([alturaRanger,anchoRanger,baseRanger],center=true);  
     
   
   //motores
translate([10,5,7])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
mirror([0,0,1]){

translate([10,5,3])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
}

mirror([0,1,0]){
   translate([10,5,7])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
mirror([0,0,1]){

translate([10,5,3])
cube([alturaRanger,alturaRanger,alturaRanger],center=true);
}

} 
}
+/