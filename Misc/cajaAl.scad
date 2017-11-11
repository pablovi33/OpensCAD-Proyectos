//Largo se desplaza en "X"
//Ancho se desplaza en "Y"

module base(largo=80,ancho=80,espesor=3,dientes=20,Up=1,Down=1,Left=1,Right=1){
tamDientesLargo=(largo)/dientes;
tamDientesAncho=(ancho)/dientes;


union(){

//Dientes derecha
  if(Right==1){
    translate([largo/2,-ancho/2-tamDientesAncho/2])
    for(i=[1:dientes/2]){
       translate([0,tamDientesAncho*2*i])
       square([2*espesor,tamDientesAncho],center=true);
    }
}

//Dientes Izquierda

if(Left==1){
   translate([-largo/2,-ancho/2-3*tamDientesAncho/2])
   for(i=[1:dientes/2]){
      translate([0,tamDientesAncho*2*i])
      square([2*espesor,tamDientesAncho],center=true);
   }
}

//Dientes Arriba

if(Up==1){
   translate([-largo/2-3*tamDientesLargo/2,ancho/2])
   for(i=[1:dientes/2]){
     translate([tamDientesLargo*2*i,0])
     square([tamDientesLargo,2*espesor],center=true);
   }
}

//Dientes Abajo

if(Down==1){
   translate([-largo/2-tamDientesLargo/2,-ancho/2])
    for(i=[1:dientes/2]){
     translate([tamDientesLargo*2*i,0])
     square([tamDientesLargo,2*espesor],center=true);
    }
}

//Cuadrado
square([largo,ancho],center=true);
}

}//Fin module base


module pruebaBase (largo=40,ancho=30,alto=40,espesor=3,dientes=6){

  for(i=[1:3]){
    for(j=[1:2]){
      translate([((i*largo)+(i*2.5*espesor)),((j*ancho)+(j*2.5*espesor))])
      base(largo,ancho,espesor,dientes);
    }
  }

}//Fin module pruebaBase

module CuboBase (largo=40,ancho=30,alto=40,espesor=3,dientes=6){

//base y tapa
  for(i=[0:1]){
      translate([((i*largo)+(i*2.5*espesor)),0])
      base(largo,ancho,espesor,dientes,1,1,1,1);
  }

//lados largo
 translate([0,(ancho+alto)/2+(2.5*espesor)])
for(i=[0:1]){
   translate([((i*largo)+(i*2.5*espesor)),0])
   base(largo,alto,espesor,dientes,1,  1,1,1);
}

//lados alto
 translate([0,-ancho-(2.5*espesor)])
   for(i=[0:1]){
      translate([((i*alto)+(i*2.5*espesor)),0])
     base(alto,ancho,espesor,dientes,1,1,1,1);
   }

}//Fin module CuboBase


CuboBase(largo=30,ancho=25,alto=40,espesor=3,dientes=6);

//pruebaBase(largo=40,ancho=30,alto=40,espesor=3,dientes=6,3D=0);


//base(80,80,3,10,1,1,1,1);