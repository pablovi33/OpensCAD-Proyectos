
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
 
 module BaseTapa(anchointerno1=206,anchointerno2=206,n=8,espesor=3,$fn=resoluciOn){




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
      translate([desplaza1-espesor/2,desplaza2-(2*espesor)])
      circle(d=3*espesor,$fn=resoluciOn);
     
     square([anchointerno1,anchointerno2],center=true);
    
     
         for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      
         pestaNas(90,anchointerno2,desplaza1);
       
       
   }
   
 translate([desplaza1-espesor/2,desplaza2-(2*espesor)])
  //se le aNade un milimetro extra por la fricción
 circle(d=espesor+1,$fn=resoluciOn);
 }
 
 translate([0,anchointerno2+(2*espesor)+1])
  difference(){ 


 
 union(){
      translate([desplaza1-espesor/2,-desplaza2+(2*espesor)])
      circle(d=3*espesor,$fn=resoluciOn);
     
     square([anchointerno1,anchointerno2],center=true);
    
     
         for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      
         pestaNas(90,anchointerno2,desplaza1);
       
       
   }
   
 translate([desplaza1-espesor/2,-desplaza2+(2*espesor)])
 circle(d=espesor+1,$fn=resoluciOn);
 }
   
   
 
 }
 
 
 //fin Base Tapa
 
 //frente
 module Frente(anchointerno1=206,anchointerno2=206,n=8,espesor=3,pestaNa=10){




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
     square([anchointerno1,anchointerno2],center=true);
    
     
         for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      
         pestaNas(90,anchointerno2,desplaza1);
      
       
       
   }

     translate([alto/2,0])
     square([espesor,pestaNa],center=true);
 
}
   
   
 
 }
 //fin frente
 
 //detrAs
  module detrAs(anchointerno1=206,anchointerno2=206,n=8,espesor=3){




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
 



 
 union(){
     square([anchointerno1,anchointerno2],center=true);
    
     
         for(i=[0:180:181]){
         pestaNas(1*i,anchointerno1,desplaza2);
       }
       
      
         pestaNas(90,anchointerno2,desplaza1);
       
   }

 
 

   
   
 
 }
 //fin detrAs
 //tapa
 module tapa (anchointerno1=206,anchointerno2=206,espesor=3,pestaNa=10,resoluciOn=100){
     anchointerno1=anchointerno1-espesor;
  union(){
      
      //Cuadrado central
       square([anchointerno1,anchointerno2],center=true);
      
      //ejes
     translate([anchointerno1/2-espesor/2,anchointerno2/2])
     square([espesor,2*espesor],center=true);
      
     mirror([0,1]){
         translate([anchointerno1/2-espesor/2,anchointerno2/2])
     square([espesor,2*espesor],center=true);
         }
         //fin ejes
     

      translate([-anchointerno1/2-espesor/2,0])
      circle(d=pestaNa,$fn=resoluciOn);
     }
     
 }
 //fin tapa
 
 //Base(anchoDentroCaja,largoDentroCaja,particionPestaNas,espesor)
 //LA CAJA SOLO FUNCIONA CON particionPestaNas PARES
 espesorBase=3;
 largo=190;
 alto=190;
 ancho=190;
 dientes=10;
 resoluciOn=100;
 
 
 Base(largo,ancho,dientes,espesorBase);
 
 translate([-(largo/2)-(alto/2)-(3*espesorBase),0])
BaseTapa(alto,largo,dientes,espesorBase,resoluciOn);
 
translate([0,ancho+(3*espesorBase)+1])
  tapa(largo,ancho,3,10,100);
 
 translate([(largo/2)+(alto/2)+(3*espesorBase),ancho+(2*espesorBase)+1])
  Frente(alto,ancho,dientes,espesorBase);
  
   translate([(largo/2)+(alto/2)+(3*espesorBase),0])
  detrAs(alto,ancho,dientes,espesorBase);
 
 


   
 
 
  
   

