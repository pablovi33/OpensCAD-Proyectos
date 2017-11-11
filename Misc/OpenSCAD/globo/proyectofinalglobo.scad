def=6;
//globo
union(){
    parametro=40;
translate([0,0,40])
sphere(r=parametro,$fn=def);

param=25;
for(i=[0:3]){
rotate(90*i)
translate([0,35,25])
sphere(r=param,$fn=def);
}
//aros
for(i=[0:3]){
rotate(90*i)
translate([35,0,25])
rotate_extrude($fn=def)
translate([25,0,0])
circle(r=1,$fn=def);   
}

for(i=[0:3]){
rotate(90*i)
translate([35,0,25])
rotate([90,0,0])
rotate_extrude($fn=def)
translate([25,0,0])
circle(r=1,$fn=def);   
}

//aros principales
ancho=40;
translate([0,0,50])
rotate_extrude($fn=def)
translate([ancho,0,0])
circle(r=1,$fn=def);

translate([0,0,40])
rotate([0,90,45])
rotate_extrude($fn=def)
translate([ancho,0,0])
circle(r=1,$fn=def);

translate([0,0,40])
rotate([0,90,135])
rotate_extrude($fn=def)
translate([ancho,0,0])
circle(r=1,$fn=def);

translate([0,0,40])
rotate([0,90,90])
rotate_extrude($fn=def)
translate([ancho,0,0])
circle(r=1,$fn=def);

translate([0,0,40])
rotate([0,90,180])
rotate_extrude($fn=def)
translate([ancho,0,0])
circle(r=1,$fn=def);

//adornoglobo
for(i=[0:3]){
rotate(90*i)
translate([0,35,55])
cube([6,6,6],center=true);
}
for(i=[0:3]){
rotate(90*i)
translate([0,62,25])
cube([3,3,3],center=true);
}
}
//postecentral
union(){
poste=1;
translate([0,0,-10])
cube([poste,poste+70,poste],center=true);

rotate(90)
translate([0,0,-10])
cube([poste,poste+70,poste],center=true);
for(i=[0:3]){
rotate(90*i)
translate([0,35,-10])
cube([3,3,3],center=true);
}
}

//cola
cola=1;
rotate(90)
translate([0,30,-23])
cube([cola,cola+10,cola],center=true);

translate([0,0,-25])
cube([30,5,5],center=true);

translate([0,0,-23])
cube([20,4,5],center=true);
//helise
translate([-30,0,-23])
rotate([90,0,90])
for(i=[0:2]){
rotate(120*i)
translate([0,0,-5])
cube([1,8,3]);
}
//barca
difference(){
resize(newsize=[55,10,30])
translate([0,0,-105])
sphere(r=68,$fn=def);
    
resize(newsize=[65,17,30])
translate([0,0,-65])
sphere(r=78,$fn=def);
    
for(i=[0:1]){
rotate(180*i)
translate([23,0,-37])
sphere(r=12,$fn=def);
}
}
//copa
translate([0,0,78])
linear_extrude(height=10,scale=0,twist=0)
square([6,6],center=true);

//puntita
translate([26,0,-24])
rotate([0,90,0])
linear_extrude(height=10,scale=0,twist=0)
square([2,2],center=true);

//alas
translate([0,0,-30])
rotate([90,0,0])
linear_extrude(height=23,scale=0,twist=0)
square([13,4],center=true);

translate([0,0,-30])
rotate([270,0,0])
linear_extrude(height=23,scale=0,twist=0)
square([13,4],center=true);
