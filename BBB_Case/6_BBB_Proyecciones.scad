$fn=50;
PCB_Ancho=54.61;
PCB_Largo=86.36;
Tol=4;
Tol_Pin=1;
R_1=6.35;
D_1=2*R_1;
GrosorPCB=1.25;
GrosorContorno=3;
Radio_Barreno=2;
projection(){
    translate([R_1,R_1,GrosorPCB+GrosorContorno])
    difference(){
        //Genera Material
        CuadradoFigura();
        //Recorte Barrenos
        Barrenos();
        //Recorte Alimentación
        translate([-R_1,-R_1+Tol+4,0])
        cube([Tol+12,11,GrosorContorno]);
        //Recorte Ethernet
        translate([-R_1,+Tol-R_1+21,0])
        cube([Tol+20,18,GrosorContorno]);
        //Recorte USB
        translate([Tol*2+PCB_Largo-R_1-19,9.5+Tol-R_1,0])
        cube([19,15,GrosorContorno]);   
        //Recorte Reset
        translate([5+Tol-R_1,51.57-2+Tol-R_1,0])
        cube([6,4,GrosorContorno]);
        //Recorte Power
        translate([5+Tol-R_1,42-2+Tol-R_1,0])
        cube([6,4,GrosorContorno]);
        //Recorte SW2 
        translate([Tol*2+PCB_Largo-R_1-17,40+Tol-R_1,0])
        cube([6,4,GrosorContorno]);
        //Recorte Primer Header
        translate([Tol-R_1+18,-R_1+Tol,0])
        cube([59,6,GrosorContorno]);
        //Recorte Segundo Header 
        translate([Tol-R_1+18,48.61+Tol-R_1,0])
        cube([59,6,GrosorContorno]);
        //Recorte  Debug
        translate([Tol-R_1+19.685-Tol_Pin+21,-R_1+Tol+6,0])
        cube([19,5,GrosorContorno]);
        //Recorte Capacitor
        translate([Tol*2+PCB_Largo-R_1-29,Tol+8-R_1,0])
        cube([11,8,GrosorContorno]);
    }
}
translate([Tol*8+PCB_Largo-D_1,0,0])
projection(){
    //Soporte Superior
    translate([R_1,R_1,GrosorPCB])
    difference(){
        //Genera Material
        CuadradoFigura();
        //Recorte Barrenos
        Barrenos();
        //Recorte Zona 1
        translate([-R_1,-R_1+Tol+4,0])
        cube([Tol+12,45,GrosorContorno]);
        //Recorte Zona 2
        translate([Tol+12-R_1,-R_1+2+Tol+5,0])
        cube([20,40,GrosorContorno]);
        //Recorte Zona 3
        translate([Tol-R_1+18,-R_1+Tol,0])
        cube([59,54.61,GrosorContorno]);
        //Recorte Zona 4
        translate([Tol-R_1+77,9.5+Tol-R_1,0])
        cube([Tol+9.36,36,GrosorContorno]);
    }
}
translate([Tol*14+2*PCB_Largo-D_1,0,0])
projection(){
    //Soporte Inferior
    translate([R_1,R_1,-GrosorContorno])
    difference(){
         //Genera Material
        CuadradoFigura();
        //Recorte Barrenos
        Barrenos();
        //Recorte Zona 1
        translate([-R_1,-R_1+Tol+4,0])
        cube([Tol+12,45,GrosorContorno]);
        //Recorte Zona 2
        translate([Tol+12-R_1,-R_1+2+Tol+5,0])
        cube([20,40,GrosorContorno]);
        //Recorte Zona 3
        translate([Tol-R_1+18,-R_1+Tol,0])
        cube([59,54.61,GrosorContorno]);
        //Recorte Zona 4
        translate([Tol-R_1+77,9.5+Tol-R_1,0])
        cube([Tol+9.36,36,GrosorContorno]);
    }
}
translate([Tol*20+3*PCB_Largo-D_1,0,0])
projection(){
    //Cubierta Inferior
    translate([R_1,R_1,-2*GrosorContorno])
    difference(){
        //Genera Material
        CuadradoFigura();
        //Recorte Barrenos
        Barrenos();
        //Recorte MicroUSB
        translate([-R_1,-R_1+Tol+39,0])
        cube([13,10,GrosorContorno]);      
        //Recorte HDMI
        translate([Tol*2+PCB_Largo-R_1-12,-R_1+Tol+21,0])
        cube([12,8,GrosorContorno]);
        //Recorte MicroSDCard
        translate([Tol*2+PCB_Largo-R_1-4,-R_1+Tol+29,0])
        cube([4,16.5,GrosorContorno]);
    }
}
module CuadradoFigura(){
        //Crea Cuadrado de Figura
        minkowski()
        {
            cube([Tol*2+PCB_Largo-D_1,Tol*2+PCB_Ancho-D_1,GrosorContorno/2]);
            cylinder(r=R_1,h=GrosorContorno/2);
        }
    }
 module Barrenos (){     
        // Barreno Inferior Izquierdo
        translate([14.61-R_1+Tol,3.18-R_1+Tol,0])
        cylinder(r=Radio_Barreno,h=GrosorContorno);
        //Barreno Inferior Derecho
        translate([80.71-R_1+Tol,6.35-R_1+Tol,0])
        cylinder(r=Radio_Barreno,h=GrosorContorno);
        //Barreno Superior Izquierdo
        translate([14.61-R_1+Tol,51.57-R_1+Tol,0])
        cylinder(r=Radio_Barreno,h=GrosorContorno);
       //Barreno Superior Derecho 
        translate([80.71-R_1+Tol,48.26-R_1+Tol,0])
        cylinder(r=Radio_Barreno,h=GrosorContorno);
 } 