
module placa(taladro=10) {
lonX=87.01;
lonY=97.18;
altoPlaca=1;



difference(){

union(){
linear_extrude(height=altoPlaca)
square([lonX,lonY],center=true);


//####CONECTOR TRIPLE MIDI#####

//posicionamiento
translate([0,-6.45,0])
//centramiento
translate([-((lonX/2)-(20/2)),0,(19.5/2)+altoPlaca])
cube([20+taladro,59.88,19.5],center=true);

//#####CALCULOS MIDI ####
//espacio centrado MIDI
//echo((lonY-59.88)/2);

//cAlculo posicionamiento
//echo(18.65-12.20);

//####CONECTOR CENTROMIX ####

//posicionamiento
translate([-17.9,0,0])

//centramiento
translate([0,(lonY/2)-(10/2),altoPlaca+(12/2)])
cube([24.19,10+taladro,12],center=true);

//####CALCULOS CENTROMIX####

//espacio centrado
//echo((lonX-24.19)/2);

//cAlculo posicionamiento
//echo(31.41-13.51);

//#### CONECTOR TELEFONICO1 ####
//posicionamiento
translate([13.485,0,0])

//centramiento
translate([0,lonY/2-(20/2),(12/2)+altoPlaca])

cube([15.94,20+taladro,12],center=true);


//####CALCULOS TELEFONICO 1 ####
//espacio centrado
//echo((lonX-15.94)/2);

//cAlculo posicionamiento
//echo(35.535-(11.32+24.19+13.51));

//#### CONECTOR TELEFONICO 2

//posicionamiento
translate([33.76,0,0])

//centramiento
translate([0,lonY/2-(20/2),(12/2)+altoPlaca])

cube([15.87,20+taladro,12],center=true);

//####CALCULOS TELEFONICO 2 ####

//espacio centrado
//echo((lonX-15.87)/2);

//cAlculo posicionamiento
//echo(35.57-(11.32+24.19+13.51+15.94+4.37));

//#### CONECTOR PIN ANG 90 #####

//posicionamiento
translate([0,-11.385,0])

//centramiento
translate([(lonX/2)-(10/2),0,altoPlaca+(10/2)])

cube([10+taladro,17.75,10],center=true);

//####CALCULOS PIN ANG 90####

//espacio centrado
//echo((lonY-17.75)/2);

//cAlculo posicionamiento
//echo(39.715-51.1);

//comprobaciOn
//echo(11.385+39.715);

//#### CONECTOR USB A ####

//posicionamiento
translate([16.875,0,0])

//centramiento
translate([0,-((lonY/2)-(10/2)),altoPlaca+(11.3/2)])

cube([11.42,10+taladro,11.3],center=true);

//####CALCULOS USB A ####

//espacio centrado
//echo((lonX-11.42)/2);

//cAlculo posicionamiento
//echo(37.795-20.92);

//#### JACK PODER ####

//posicionamiento
translate([-13.405,0,0])

//centramiento
translate([0,-((lonY/2)-(10/2)),altoPlaca+(11.3/2)])

cube([9.02,10+taladro,11.3],center=true);

//#### CALCULOS JJACK PODER #####

//espacio centrado
//echo((lonX-9.02)/2);

//cAlculo posicionamiento
echo(38.995-(11.3+20.92+20.18));

}//fin union

//#### TORNILLOS ####


//#### superior izquierdo #####

//centramiento
translate([-lonX/2+(3.5),lonY/2-(3.5),0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);

//#### inferior izquierdo #####

//centramiento
translate([-lonX/2+(3.5),-lonY/2+(3.5),0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);

//#### superior derecho #####

//centramiento
translate([lonX/2-(3.5),lonY/2-28.84,0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);

//#### inferior derecho #####

//centramiento
translate([lonX/2-(3.5),-lonY/2+(3.5),0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);
}//fin difference

}//fin module






module caseAtras(){
    
//#### BASE ####
lonX=87.01;
lonY=97.18;
espesor=1.5;
tolerancia=1;
altoPlaca=1;
alto=5;

difference(){
union(){
translate([0,0,-(alto/2)])
difference(){
//mayor
cube([lonX+espesor+tolerancia,lonY+espesor+tolerancia,alto],center=true);
    
    
    //menor
    translate([0,0,espesor])
    cube([lonX+tolerancia,lonY+tolerancia,alto],center=true);
}

//#### TORNILLOS ####

translate([0,0,-(alto/2)-(altoPlaca/2)-0.02])
union(){
//#### superior izquierdo #####

//centramiento
translate([-lonX/2+(3.5),lonY/2-(3.5),0])

//mayor
cylinder(r=((3.5)/2)+1,h=alto-altoPlaca,$fn=100,center=true); 
   


//#### inferior izquierdo #####

//centramiento
translate([-lonX/2+(3.5),-lonY/2+(3.5),0])

//mayor
cylinder(r=((3.5)/2)+1,h=alto-altoPlaca,$fn=100,center=true); 
   



//#### superior derecho #####

//centramiento
translate([lonX/2-(3.5),lonY/2-28.84,0])

//mayor
cylinder(r=((3.5)/2)+1,h=alto-altoPlaca,$fn=100,center=true); 
    



//#### inferior derecho #####

//centramiento
translate([lonX/2-(3.5),-lonY/2+(3.5),0])

//mayor
cylinder(r=((3.5)/2)+1,h=alto-altoPlaca,$fn=100,center=true); 
    


}
//fin union tornillos

}//fin union global

//#### superior izquierdo #####

//centramiento
translate([0,0,-(alto/2)-0.02])

translate([-lonX/2+(3.5),lonY/2-(3.5),0])

 //menor
    cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true); 


//#### inferior izquierdo #####

//centramiento
translate([0,0,-(alto/2)-0.02])

translate([-lonX/2+(3.5),-lonY/2+(3.5),0])

  //menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true);


//#### superior derecho #####

//centramiento
translate([0,0,-(alto/2)-0.02])

translate([lonX/2-(3.5),lonY/2-28.84,0])

//menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true); 


//#### inferior derecho #####

//centramiento
translate([0,0,-(alto/2)-0.02])

translate([lonX/2-(3.5),-lonY/2+(3.5),0])

 //menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true);



}//fin difference
}//fin module


module caseArriba(){
//#### BASE ####
lonX=87.01;
lonY=97.18;
espesor=1.5;
tolerancia=1;
alto=22;


union(){
translate([0,0,(alto/2)])
difference(){
//mayor
cube([lonX+espesor+tolerancia,lonY+espesor+tolerancia,alto],center=true);
    
    //menor
    translate([0,0,-espesor])
    cube([lonX+tolerancia,lonY+tolerancia,alto],center=true);
    
   translate([0,0,-(alto/2)-espesor])
     placa(taladro=20);
    
    escala=0.6;
    altura=1;
translate([-(47*escala)-9,12*escala,(alto/2)-altura])
    
 union(){
 linear_extrude(height=altura*2)
 text(size=20*escala,font = "Simplex","Verduino
 ");
 
 /*linear_extrude(height=altura)
 translate([(30*escala)-6,-(15*escala),0])
 text(size=5,font = "Liberation Sans","powered by");*/
 
 linear_extrude(height=altura*2)
 translate([30*escala,-35*escala,0])
 text(size=12*escala,font = "Simplex","IMAH");
 }//fin union letras
 
}

//#### TORNILLOS ####

//reposicionamiento
translate([0,0,(alto/2)+0.02])
union(){
//#### soportes
    
 //#### PRIMER TANDA ####
    //cubo tornillo
    translate([-lonX/2+(3.5)-3,lonY/2-(3.5),0])
    cube([2,2,alto],center=true);
    
    //cubo 
    translate([-lonX/2+(3.5)-3,lonY/2-(3.5)-20,0])
    cube([2,2,alto],center=true);
    
    
    //cubo tornillo
     translate([-lonX/2+(3.5)-3,-lonY/2+(3.5),0])
    cube([2,2,alto],center=true);
    
    //####SEGUNDA TANDA ####
    
     
    //cubo tornillo
     translate([-lonX/2+(3.5),lonY/2-(3.5)+3,0])
    cube([2,2,alto],center=true);
    
     //cubo
     translate([0,lonY/2-(3.5)+3,0])
    cube([2,2,alto],center=true);
    
    //cubo
     translate([24,lonY/2-(3.5)+3,0])
    cube([2,2,alto],center=true);
    
    //####TERCERA TANDA####
    
    //cubo tornillo
     translate([lonX/2-(3.5)+3,lonY/2-28-1,0])
    cube([2,2,alto],center=true);
    
    //cubo 
     translate([lonX/2-(3.5)+3,lonY/2-16-28-3.5,0])
    cube([2,2,alto],center=true);
    
      //cubo 
     translate([lonX/2-(3.5)+3,lonY/2-16-26-28-3.5,0])
    cube([2,2,alto],center=true);
    
    //cubo tornillo
     translate([lonX/2-(3.5)+3,-(lonY/2)+(3.5),0])
    cube([2,2,alto],center=true);
    
    //#### CUARTA TANDA ####
    
    //cubo tornillo
     translate([lonX/2-(3.5),-(lonY/2)+(3.5)-3,0])
    cube([2,2,alto],center=true);
    
    //cubo 
     translate([lonX/2-(3.5)-15,-(lonY/2)+(3.5)-3,0])
    cube([2,2,alto],center=true);
    
    //cubo 
     translate([lonX/2-(3.5)-32,-(lonY/2)+(3.5)-3,0])
    cube([2,2,alto],center=true);
    
    //cubo 
     translate([lonX/2-(3.5)-46,-(lonY/2)+(3.5)-3,0])
    cube([2,2,alto],center=true);
    
    //cubo 
     translate([lonX/2-(3.5)-62,-(lonY/2)+(3.5)-3,0])
    cube([2,2,alto],center=true);
    
    
    //cubo tornillo
     translate([-lonX/2+(3.5),-(lonY/2)+(3.5)-3,0])
    cube([2,2,alto],center=true);
    
//#### superior izquierdo #####

//centramiento
translate([-lonX/2+(3.5),lonY/2-(3.5),0])
difference(){
//mayor
cylinder(r=((3.5)/2)+1,h=alto,$fn=100,center=true); 
    //menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true); 
    
}



//#### inferior izquierdo #####

//centramiento
translate([-lonX/2+(3.5),-lonY/2+(3.5),0])
difference(){
 //mayor
cylinder(r=((3.5)/2)+1,h=alto,$fn=100,center=true);
  //menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true);
    
}


//#### superior derecho #####

//centramiento


translate([lonX/2-(3.5),lonY/2-28.84,0])
difference(){
    //mayor
cylinder(r=((3.5)/2)+1,h=alto,$fn=100,center=true);
//menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true); 
}


//#### inferior derecho #####

//centramiento
translate([lonX/2-(3.5),-lonY/2+(3.5),0])
difference(){
    //mayor
cylinder(r=((3.5)/2)+1,h=alto,$fn=100,center=true);
 //menor
cylinder(r=((3.5)/2),h=alto*2,$fn=100,center=true);
    
}

}
}//fin union
}//fin module

//####RENDERIZADOS####

//translate([0,0,1])
//caseAtras();
//placa(taladro=0);
caseArriba();

