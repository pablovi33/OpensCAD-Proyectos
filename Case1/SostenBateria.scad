
use<LogoDitac.scad>;


module sostenBateria(){
    tol=0.5;
difference(){
union(){
    //barra
cube([66+8,8,3],center=true);
    //"tope", soporte para que pase cable USB
translate([12,0,3])
cube([32,8,4],center=true);
    
    //SOsten placa
    rotate(90)
translate([0,-48,3])
difference(){
sostenPlacaBateria();
   translate([0,15,0]) 
cylinder(r=1.5+tol+1,$fn=100,h=6*2,center=true);
   }
    
}
  translate([33,0])
cylinder(r=1.5+tol,$fn=100,h=6*2,center=true);
        translate([-33,0])
cylinder(r=1.5+tol,$fn=100,h=6*2,center=true);

//taladro que rebaja puntal pija
translate([25,0,8.5])
cube([8,8,8],center=true);


//taladro conector USB
translate([12,0])
cube([20,16,6],center=true);

//taladro pija
translate([25,0,0])
cylinder(r=0.8+tol,$fn=100,h=6*2,center=true);


}
//translate([0,10,0])
//cube([111,1.5,20],center=true);

}


module sostenPlacaBateria(){
difference(){
    tol=0.5;

union(){
    //estructuras
translate([0.75,0,-3])
cube([21+22.5+4+4,8,3],center=true);

translate([0,11.5,-3])
cube([8,23+8,3],center=true);


//puntos de anclaje
    
    /*
    //APARENTEMENTE OBSOLETO
 //translate([0,23,0])  
//cube([8,8,3],center=true);
*/
    
 translate([22.5,0,0])
    cylinder(r=3,$fn=100,center=true,h=3);
//cube([8,8,3],center=true);

   translate([-21,0,0])
    cylinder(r=3,$fn=100,center=true,h=3);
//cube([8,8,3],center=true);
}
//taladros para pijas
 translate([0,23,0])  
cylinder(r=0.8+tol,$fn=100,h=6*2,center=true);
   
translate([22.5,0,0])
cylinder(r=0.8+tol,$fn=100,h=6*2,center=true);
 
    translate([-21,0,0])
cylinder(r=0.8+tol,$fn=100,h=6*2,center=true);

}

}
//}

/*
//cuadradoPrueba
 tol=0.5;
difference(){
cube([8,8,3],center=true);
    cylinder(r=1.5+tol,$fn=100,h=6,center=true);
    }
*/
 
    
 module barraUnion(side=2 ){
    //union en ángulo
translate([4+2.5,0,-1.25])
    rotate([0,-70,0])
cube([5-(0.5*4),8,5.5+(0.5*3)],center=true);
    
     if(side==1){
     //union angulo A
     rotate(90)
 translate([4+2.5,0,-1.25])
    rotate([0,-70,0])
cube([5-(0.5*4),8,5.5+(0.5*3)],center=true);
     }
     
         if(side==2){
     //union angulo A
     rotate(-90)
 translate([4+2.5,0,-1.25])
    rotate([0,-70,0])
cube([5-(0.5*4),8,5.5+(0.5*3)],center=true);
     }

//parte baja
translate([4+5+((30-5)/2)-1,0,-2.5])
cube([30-7,8,3],center=true);



//punto de union
 tol=0.5;
difference(){
cube([8,8,3],center=true);
    cylinder(r=1.5+tol,$fn=100,h=6,center=true);
    }


}


module cuadradoPrueba(){
 tol=0.5;
difference(){
cube([8,8,3],center=true);
    cylinder(r=1.5+tol,$fn=100,h=6,center=true);
    }
}

module pija(){
translate([0,0,2.5])
cube([4,4,3],center=true);
cylinder(r=0.8+0.25,$fn=100,h=8,center=true);

}


module barraConectora(){
//barra conectora

//postes barra conectora

//1
translate([4+5+((30-5)/2)+6.5,0,-2.5-3])
cube([8,8,3],center=true);

//2
translate([4+5+((30-5)/2)+6.5,65,-2.5-3])
cube([8,8,3],center=true);

//parte baja
//ajuste
translate([4+5+((30-5)/2)+6.5,65/2,-2.5-6])
cube([8,65+8,3],center=true);
}

module caratulaPot(){
difference(){
     translate([0,0,-2])
  cube([1.5,29,15+12],center=true);
    
    ajustePot=9;
    //agujeroPot
    translate([0,-ajustePot,(15+3)/2-4])
    rotate([0,90,0])
  cylinder(r=7.5/2+0.5,$fn=100,h=3,center=true);
    
    //agujero poste Pot
    translate([0,-ajustePot,(15+3)/2-10.5])
    rotate([0,90,0])
  cylinder(r=1,$fn=100,h=3,center=true);
    
    //agujero jack
    translate([0,+8,(15+3)/2-4])
    rotate([0,90,0])
  cylinder(r=6/2+0.5,$fn=100,h=3,center=true);
    
    /*
    //NO IMPRESIONES DE LOGOS EN VERTICAL
//logo
   translate([0,0,-8])
    
    rotate([90,0,90])
    linear_extrude(height=6)
    scale(0.8)
logo();
*/

}    
}

module piezaPot(){
    //#####EXITOSO 10/12/2017######
    difference(){
           union(){
            //barraUnion(2);
               barraUnion(0);
               translate([0,65,0])
               //barraUnion(1);
              barraUnion(0);

               //pcb
         //coordenada en "y" para ajustar el largo del receptAculo
translate([10+((30-5)/2),73+2.5,-2.5])
cube([20,29,3],center=true);


//caratula
 translate([34.5-2,61+(29/2),(15+3)/2-3.5])
caratulaPot();

barraConectora();
        }
      translate([40,108,0])
    cube([80,40,40],center=true);  
    }
  
    
}//fin pieza pot

module bumper(izquierda=1){
    //6mm agregados 18/12/2017 por malas impresiones (3D)
     longDISP=194+6;
    //milimetro agregado 14/12/2017
  
anchDISP=111+2+1+1;
aumentoAnchDISP=10;
thick=33;
espesor=4;
pantallaX=100;
    //26 mm agregados 19/12/2017
pantallaY=160+26;

    
    if(izquierda==1){
difference(){
   union(){
  cube([longDISP+espesor/2,anchDISP+espesor/2,thick+espesor/2],center=true);
       
       }
   //taladroMitad
translate([longDISP,0])
cube([longDISP*2,anchDISP*2,thick*2],center=true);

//taladroInterno
cube([longDISP-espesor/2,anchDISP-espesor/2,thick-espesor/2],center=true);
       
 
//taladro para Panel 
       translate([0,0,-20])
cube([longDISP-espesor,anchDISP-espesor,thick-espesor],center=true);
 
 
   //taladro para ver Pantalla
       translate([0,0,8])
   cube([pantallaY,pantallaX,thick],center=true);  

//taladro para sotportar pantalla
       translate([0,0,(thick/2)-(espesor/2)+0.5])
cube([longDISP,anchDISP,1],center=true);

//taladro para sotportar panelSolar
       translate([0,0,-(thick/2)+2])
//cube([longDISP,109,3],center=true);
cube([longDISP,anchDISP,3],center=true);

//taladro switch
translate([-longDISP/2,30,0])
rotate([90,0,90])
switch();



//taladro USB (1)
translate([-longDISP/2,-(18*1.5)-2,0])
cube([10,18,7],center=true);

//taladro foco (1)
translate([-longDISP/2,0,1])
  rotate([0,90,0])
  //aumento 0.4mm a taladro para foco
cylinder(r=5.5/2,$fn=100,center=true,h=6);


//taladro HDMI
translate([0,-anchDISP/2,-15])
cube([60,8,22],center=true);

//switch HDMI
  translate([-20,anchDISP/2,0])
  rotate([90,0,0])
  switch();

//taladro botOn
  translate([-40,anchDISP/2,7])
  rotate([90,0,0])
  //aumento 2mm en todas direcciones 19/12/2017
 cube([6.1+2,6.1+2,6.1+2],center=true);

  
}

despAnclaje=3.5+1.5;
//1.5mm agregados 19/12/2017
//agujero para atornillar 1

//soporte esquinero
translate([-1.5,anchDISP/2-despAnclaje+2,6])
cube([3,4,4],center=true);

translate([-1.5,anchDISP/2-despAnclaje,0])
difference(){
cube([3,8,8],center=true);
rotate([0,90,0])
cylinder(r=4/2,$fn=100,h=10,center=true);
}

//agujero para atornillar 2

//soporte esquinero
translate([-1.5,-anchDISP/2+despAnclaje-2,6])
cube([3,4,4],center=true);

translate([-1.5,-anchDISP/2+despAnclaje,0])
difference(){
cube([3,8,8],center=true);
rotate([0,90,0])
cylinder(r=4/2,$fn=100,h=10,center=true);
}

/*
//postePanel
translate([0,(109)/2+(3/2),0])
cube([50,3,3],center=true);
*/



}//fin if (izquierda
if(izquierda==0){
    difference(){
   union(){
  cube([longDISP+espesor/2,anchDISP+espesor/2,thick+espesor/2],center=true);
       
       }
   //taladroMitad
translate([-longDISP,0])
cube([longDISP*2,anchDISP*2,thick*2],center=true);

//taladroInterno
cube([longDISP-espesor/2,anchDISP-espesor/2,thick-espesor/2],center=true);
       
 
//taladro para Panel 
       translate([0,0,-20])
cube([longDISP-espesor,anchDISP-espesor,thick-espesor],center=true);
 
 
   //taladro para ver Pantalla
       translate([0,0,8])
   cube([pantallaY,pantallaX,thick],center=true);  

//taladro para sotportar pantalla
       translate([0,0,(thick/2)-(espesor/2)+0.5])
cube([longDISP,anchDISP,1],center=true);

//taladro para sotportar pantalla
      translate([0,0,-(thick/2)+2])
cube([longDISP,anchDISP,3],center=true);

    
//taladro USB (4)
translate([longDISP/2,-11.9,1.5-10])
cube([10,85,27+20],center=true);

//taladro Bocina
translate([longDISP/4,-anchDISP/2+4,0])
cube([80,8,22],center=true);


//taladro HDMI
translate([0,-anchDISP/2,-15])
cube([32,8,22],center=true);

  
}

despAnclaje=3.5+1.5;
//1.5mm agregados 19/12/2017
//agujero para atornillar 1

//agujero para atornillar 1

//soporte esquinero
translate([1.5,anchDISP/2-despAnclaje+2,6])
cube([3,4,4],center=true);

translate([1.5,anchDISP/2-despAnclaje,0])
difference(){
cube([3,8,8],center=true);
rotate([0,90,0])
cylinder(r=4/2,$fn=100,h=10,center=true);
}

//agujero para atornillar 2

//soporte esquinero
translate([1.5,-anchDISP/2+despAnclaje-2,6])
cube([3,4,4],center=true);

translate([1.5,-anchDISP/2+despAnclaje,0])
difference(){
cube([3,8,8],center=true);
rotate([0,90,0])
cylinder(r=4/2,$fn=100,h=10,center=true);
}




}//fin if

}//fin module

module switch(){
   union(){
cube([8,6,8],center=true);


translate([8,0,0])
cylinder(r=3/2,$fn=100,h=8,center=true);

translate([-8,0,0])
cylinder(r=3/2,$fn=100,h=8,center=true);
}
}

module soportePanel(soporteFinal=0,espesor=3,dist=4,largo=40){


//pestaNia 1
translate([-espesor,0,espesor-(espesor/4)])
cube([espesor,largo,espesor/2],center=true);

//pestaNia 2
translate([-espesor,0,-espesor+(espesor/4)])
cube([espesor,largo,espesor/2],center=true);

//cubo vertical
cube([espesor,largo,espesor*2],center=true);

//barra conectora
translate([espesor*(dist/2),0,0])
cube([espesor*dist,largo,espesor],center=true);


if(soporteFinal==1){
translate([espesor*dist,0,0])
mirror([1,0,0]){

//pestaNia 1
translate([-espesor,0,espesor-(espesor/4)])
cube([espesor,largo,espesor/2],center=true);

//pestaNia 2
translate([-espesor,0,-espesor+(espesor/4)])
cube([espesor,largo,espesor/2],center=true);

//cubo vertical
cube([espesor,largo,espesor*2],center=true);

}

}

}//fin soporte Panel

module tapa(){
difference(){
cube([109,30,3],center=true);
    translate([-3,0,0])
cylinder(r=12,$fn=6,center=true,h=6);

//recorte
     translate([0,27.5,0])
    cube([109,30,6],center=true);

//tornillo
    translate([-15-8,12-2.7,0])
cylinder(r=(1.1*2)+0.5,$fn=100,center=true,h=6);
    
    //logo
    translate([-34.5,-3,0])
    linear_extrude(height=6)
    scale(1)
logo();
}
}//fin tapa


//###### RENDERIZADOS ######


//parametros


longDISP=194;
anchDISP=111+2;
aumentoAnchDISP=10;
thick=32;
espesor=4;
pantallaX=100;
pantallaY=160;


//cuadradoPrueba();

//pija();

//sostenBateria();

//barraConectora();

//piezaPot();



//FUNCIONARON 17/12/2017
//correccion de tamaño en 18/12/2017
//bumper(1);
//bumper(0);


/*
primer digito:
0 -> sin soporte en el extremo
1 -> con soporte en el extremo
segundo digito -> espesor del material,
toda la pieza es calculada dependiendo éste espesor
tercer digito -> distancia (multiplicador por el espesor de la pieza
cuarto digito -> largo de la pieza
*/

//soporte 1
//Funcionó :D
//soportePanel(0,3,1,80);

//soporte 2
//funcionó :D
//distancia cero (0) es la mínima
//soportePanel(1,3,0,80+2);

//PIEZA AJUSTE
//translate([1.5,anchDISP/2-despAnclaje+2,6])
//cube([3,4,4],center=true);

//translate([1.5,anchDISP/2-despAnclaje,0])
difference(){
cube([2,8,26.5],center=true);
rotate([0,90,0])
cylinder(r=4/2,$fn=100,h=10,center=true);
}

//TAPA
/*
difference(){
 union(){
     
     translate([0,56,0])
      soportePanel(1,3,0,6);
     
   soportePanel(1,3,0,106);
   translate([-54.5,-38,-1.5])
   tapa();
  }
  
  translate([-13,-60,0])
  cube([26,60,30],center=true);
 }
 
 */


//tapa();


/*
cube([longDISP,anchDISP,thick],center=true);
translate([0,(anchDISP/2)+(aumentoAnchDISP/2)])

cube([longDISP,aumentoAnchDISP,thick],center=true);

//taladroMitad
translate([longDISP,0])
cube([longDISP*2,anchDISP*2,thick*2],center=true);
*/







