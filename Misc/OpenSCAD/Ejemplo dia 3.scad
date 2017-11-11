//---------------------------------------------
//*******************EJEMPLOS DIA 3************
//---------------------------------------------

//for(i=[inicio:paso:final])
//for(i=[inicio:final])

/*
for(i=[0:4]) {
    translate([0,0,4*i])
    cube([3,3,3],center=true);
}*/

/*for(i=[0:4]) {
    translate([0,0,4*i])
    cube([3,3,3]);
}*/

for(i=[0:4]){
    rotate(45*i)
    translate([0,0,4*i])
    cube([3,3,3]);
}