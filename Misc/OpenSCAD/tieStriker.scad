    
    
    
    
    module Cuerpo(radio=3,def=20,largoT=6){
    //cabina
    sphere(r=radio,$fn=def);
    //fin cabina
    
    //cuerpo    
    rotate([90,0,90])
    translate([0,0,-largoT])
    cylinder(r=radio,$fn=def,h=largoT);
    //fin cuerpo
    
    //posterior
    translate([-largoT,0,0])
     sphere(r=radio,$fn=def);
    //fin posterior
        
    }
    
    //modulo Ala
    module Ala(   largoAla=12,
    lateralAla=9,
    anchoAla=3,
    espesor=1)
    {
    linear_extrude(height=espesor)
     polygon( points=[[0,0],[largoAla,0],[lateralAla,anchoAla],[(lateralAla-(lateralAla/anchoAla)),anchoAla]]);
    }
    
    //fin modulo ala
    color("grey")
    Cuerpo();
    
    escalaAla=3;
    rotate(180)
    translate([-25,0,0])
    translate([0,3,3])
    rotate([-30,0,0])
     color("black")
    Ala(12*escalaAla,9*escalaAla,3*escalaAla,0.5);
    
    mirror([0,1,0]){
         rotate(180)
    translate([-25,0,0])
    translate([0,3,3])
    rotate([-30,0,0])
         color("black")
    Ala(12*escalaAla,9*escalaAla,3*escalaAla,0.5);
    
    }