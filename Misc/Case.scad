

//####Parametrizables#####

largo=100;
ancho=100;
alto=100;
CuboT=8;
espesor=0;
espesorCostillas=1.5;
altoResta=100;

//###Variables####
//cube([largo,ancho,alto],center=true);

cubX=(largo-2*espesor-(espesorCostillas*(CuboT-1)))/CuboT;

cubY=(ancho-2*espesor-(espesorCostillas*(CuboT-1)))/CuboT;

cubZ=(alto-2*espesor-(espesorCostillas*(CuboT-1)))/CuboT;

largoTX=largo-2*espesor;
anchoTY=ancho-2*espesor;
altoTZ=alto-2*espesor;

intersection(){

translate([0,0,-100])
cube([200,200,200]);

difference(){
cube([largo,ancho,alto],center=true);
    

cube([largoTX-espesorCostillas*4,anchoTY-espesorCostillas*4,altoTZ-espesorCostillas*4],center=true);  
    
translate([-largoTX/2,-anchoTY/2,-altoTZ/2])

for(i=[0:CuboT-1]){
   for(j=[0:CuboT-1]){
      for(k=[0:CuboT-1]){
         translate([i*(cubX+espesorCostillas),j*(cubY+espesorCostillas),k*(cubZ+espesorCostillas)])
         cube([cubX,cubY,cubZ]);
          }
       }
}


    
    
translate([0,0,-altoResta])
cube([2*largo,2*ancho,2*alto],center=true);



}

}



