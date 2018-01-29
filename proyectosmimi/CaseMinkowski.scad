
module MinkCase(X=145.5,
Y=73.5,Z=9,
radioM=7,resoluciOn=20){
    
    difference(){
    
    translate([0,0,-Z/2])
    cube([X+(2*radioM),Y+(2*radioM),Z*2],center=true);

translate([-X/2+radioM,-Y/2+radioM,0])
minkowski(){
    cube([X-(2*radioM),Y-(2*radioM),Z-(radioM)]);
     sphere(r=radioM,$fn=resoluciOn);
    //cylinder(r=4);
}
}
}//fin modulo 





X=145.5;
Y=73.5;
Z=9;
radioM=7;
resoluciOn=20;
aumento=4;


difference(){
MinkCase(X,Y,Z,radioM,resolucion);    
    translate([0,0,-2])
    MinkCase(X+4,Y+4,Z+4,radioM,resolucion);
}