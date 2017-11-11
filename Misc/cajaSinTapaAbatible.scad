
module Base(anchointerno1=206,anchointerno2=206,n=8,espesor=3){




desplaza1=(anchointerno1+espesor)/2;
desplaza2=(anchointerno2+espesor)/2;
incremento1=(anchointerno1)/n;


module pestaNas(giro=0,altura,desplazamiento){
    ladoEnsamble=altura/n;
  rotate(giro){
   difference(){
      translate([0,desplazamiento-espesor/2])
      square([altura,espesor*2],center=true);
    
      ajusteCentro=(ladoEnsamble/2);
      inicio=-(n-1);
      fin=(n/2)+2;
      for(i=[inicio:4:fin]){
        
         translate([ajusteCentro*i,desplazamiento])
         square([ladoEnsamble,espesor*2],center=true);
       }
    
      }
    }
 }
 
 
 union(){
     square([anchointerno1,anchointerno2],center=true);
    
     for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      for(i=[90:180:270]){
         pestaNas(1*i,anchointerno2,desplaza1);
       }
       
   }
 
 }
 //fin Base
 //inicio Base Tapa
 
 module BaseTapa(anchointerno1=206,anchointerno2=206,n=8,espesor=3){




desplaza1=(anchointerno1+espesor)/2;
desplaza2=(anchointerno2+espesor)/2;
incremento1=(anchointerno1)/n;


module pestaNas(giro=0,altura,desplazamiento){
    ladoEnsamble=altura/n;
  rotate(giro){
   difference(){
      translate([0,desplazamiento])
      square([altura,espesor],center=true);
    
      ajusteCentro=(ladoEnsamble/2);
      inicio=-(n-1);
      fin=(n/2)+2;
      for(i=[inicio:4:fin]){
        
         translate([ajusteCentro*i,desplazamiento])
         square([ladoEnsamble,espesor],center=true);
       }
    
      }
    }
 }
 
 difference(){ 


 
 union(){
    
   //circulo pestaNas comentado  //translate([desplaza1-espesor/2,desplaza2-(2*espesor)])
    //  circle(d=3*espesor);
     
     square([anchointerno1,anchointerno2],center=true);
    
     
         for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      
         pestaNas(90,anchointerno2,desplaza1);
       
       
   }
   
   //circulo base tapa comentado
// translate([desplaza1-espesor/2,desplaza2-(2*espesor)])
  //se le aNade un milimetro extra por la fricción
 //circle(d=espesor+1);
 }
 
 translate([0,anchointerno2+(2*espesor)+1])
  difference(){ 


 
 union(){
     //base circular de base tapa comentado //translate([desplaza1-espesor/2,-desplaza2+(2*espesor)])
    //  circle(d=3*espesor);
     
     square([anchointerno1,anchointerno2],center=true);
    
     
         for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      
         pestaNas(90,anchointerno2,desplaza1);
       
       
   }
   
//circulo base tapa comentado //translate([desplaza1-espesor/2,-desplaza2+(2*espesor)])
 //circle(d=espesor+1);
 }
   
   
 
 }
 
 
 //fin Base Tapa
 
 
 
 //Base(anchoDentroCaja,largoDentroCaja,particionPestaNas,espesor)
 //LA CAJA SOLO FUNCIONA CON particionPestaNas PARES
 espesorBase=3;
 largo=120;
 alto=280;
 ancho=216;
 dientes=10;
 
 
 Base(largo,ancho,dientes,espesorBase);

 
 translate([-(largo/2)-(alto/2)-(3*espesorBase),0])
BaseTapa(alto,largo,dientes,espesorBase);
 
 translate([+(largo/2)+(alto/2)+(3*espesorBase),0])
BaseTapa(alto,ancho,dientes,espesorBase);

 



   
 
 
  
   

