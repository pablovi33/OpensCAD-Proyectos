use<proyecto_oscios.scad>
ladoA=50;
numDientes=4;
grosor=3;

module cara(lado=112,ladoB=76.7,numDientes=4,grosor=3){

//cuadrado base
square([lado,ladoB],center=true);

//dientes arriba
diente=lado/numDientes;
dienteB=ladoB/numDientes;
translate([-lado/2,ladoB/2])
for(i=[0:(numDientes/2)-1])
    translate([i*2*diente,0])
square([diente,grosor]);

//dientes abajo
mirror([0,1,0]){
    translate([-lado/2+diente,ladoB/2])
for(i=[0:(numDientes/2)-1])
    translate([i*2*diente,0])
square([diente,grosor]);
    }
    
 //dientes derecha
    rotate(90)
    mirror([0,1,0]){
    translate([-ladoB/2+dienteB,lado/2])
for(i=[0:(numDientes/2)-1])
    translate([i*2*dienteB,0])
square([dienteB,grosor]);
    }
    
    //dientes izquierda
    mirror([1,0,0]){
    rotate(90)
    mirror([0,1,0]){
    translate([-ladoB/2,lado/2])
for(i=[0:(numDientes/2)-1])
    translate([i*2*dienteB,0])
square([dienteB,grosor]);
    }
    }
}

x=112+3;
y=76.7+2;
z=16.5+2;
grosor=3;
numDientes=6;

difference(){
for(j=[0:1])
    translate([0,-(z+(grosor*2+10))*j])
cara(x,z,numDientes, grosor);

    translate([-(112+2)/2,-(16.5+2)/2])
conec_negativo();
}
translate([x*1.5+(grosor*2)-50,0,0])

difference(){
for(j=[0:1])
{  
  translate([0,-(y+10+(grosor*3))*j])
    difference(){
    
cara(x,y,numDientes, grosor);
        translate([-(112+2)/2,-(76.7+2)/2])
     tornillos_negativo();   
    }
  }

translate([-(112+2)/2,-(76.7+2)/2])
cara_negativo();
}

translate([x*1.5+(grosor*2)+z*1.5+(grosor*2),0,0])

for(j=[0:1])
    translate([0,-(y+10+(grosor*2))*j])
cara(z,y,numDientes, grosor);