

espesor=1.5;
toleranciaAdentro=1;


//medidas tarjeta

lonX=87.01;
lonY=97.18;
lonZ=12;
altoPlaca=1.5;

difference(){
   
//medidas externas 
ExlonX=lonX+(toleranciaAdentro+espesor)*2;
ExlonY=lonY+(toleranciaAdentro+espesor)*2;
ExlonZ=lonZ+(toleranciaAdentro+espesor);
    
//medidas internas
InlonX=lonX+(toleranciaAdentro)*2;
InlonY=lonY+(toleranciaAdentro)*2;
InlonZ=lonZ+(toleranciaAdentro);
    
 translate([-ExlonX/2,-ExlonY/2,0])
cube([ExlonX,ExlonY,ExlonZ]);
    
    
  translate([-InlonX/2,-InlonY/2,-InlonZ])
cube([InlonX,InlonY,InlonZ*2]);
  
 
  
}