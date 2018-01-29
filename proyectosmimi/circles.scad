//cube([10,15,20],center=true);
resolucion=100;

/*difference(){
    sphere(r=13,$fn=resolucion);
    
    
    
cylinder(r=4,$fn=resolucion,h=40,center=true);
}

//sphere(r=13,$fn=resolucion);
    
cylinder(r=4,$fn=resolucion,h=40,center=true);
translate([0,0,30])
sphere(r=13,$fn=resolucion);


cylinder(r=4,$fn=resolucion,h=40,center=true)
*/
for(i=[0:2]){
    
    translate([0,i*30,0])
    union(){
        sphere(r=13,$fn=30);
cylinder(r=4,$fn=resolucion,h=40,center=true);
}

}