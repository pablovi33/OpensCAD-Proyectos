X=145.5;
Y=73.5;
Z=9;
radioM=7;
resolucion=20;


difference(){
    
    translate([0,0,-Z/2])
    cube([X+(2*radioM),Y+(2*radioM),Z],center=true);
    
translate([-X/2+radioM,-Y/2+radioM,0])
    
   minkowski(){
    cube([145,73.5,9]);
    sphere(r=4,$fn=20);
}

cube([X-(2*radioM),y-(2*radioM),Z-(radioM)]);
sphere(r=radioM,$fn=resolucion);
//cylinder(r=4);

}



