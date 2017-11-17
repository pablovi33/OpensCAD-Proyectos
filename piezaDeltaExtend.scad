perfil=20;
extensiOn=2;
resoluciOn=100;
angulo=60;




module redondeador(perfil=20,extensiOn=3,resoluciOn=100,espesor=0){
    
    //El círculo del redondeador se encuentra en el centro
difference(){
  translate([0,perfil/2,0])
  cube([perfil*extensiOn,perfil*extensiOn,perfil-2*(espesor)],center=true);
   cylinder(r=perfil*(extensiOn/2),$fn=resoluciOn,h=perfil,center=true);   
  }

}


//redondeador();


module pizza(perfil=20,extensiOn=2,resoluciOn=100,angulo=60,espesor=0){

difference(){
  //translate([0,perfil/2,0])
  difference(){
      //el cubo a redondear se debe mover el valor del radio del círculo redondeador
      translate([0,perfil*(extensiOn/4),0])
    cube([perfil*extensiOn,perfil*(extensiOn/2),perfil-2*(espesor)],center=true);
    
  redondeador(perfil=perfil,extensiOn=extensiOn,resoluciOn=resoluciOn,espesor=espesor);
 }
 
rotate(angulo)
  translate([perfil*extensiOn,-perfil*extensiOn,0])
 cube([perfil*extensiOn*2,perfil*extensiOn*2,perfil],center=true);
 
 }
 
 }
 
 
  

module semiCil(espesor=3,perfil=20,extensiOn=3,resoluciOn=100,angulo=60){
    mueveY=sin(60)*espesor;
 mueveX=cos(60)*espesor;
    
difference(){
     //Pizza grande
 pizza(perfil=perfil,extensiOn=extensiOn,resoluciOn=resoluciOn,angulo=angulo);
 translate([-mueveX,mueveY,0])
 //talandro
 pizza(perfil=perfil,extensiOn=extensiOn,resoluciOn=resoluciOn,angulo=angulo,espesor=espesor);
 }
 }

 
mueveY=cos(60)*perfil;
 mueveX=sin(60)*perfil;
 

translate([mueveX/2,mueveY/2,0])
 semiCil(espesor=3,perfil=20,extensiOn=3,resoluciOn=100,angulo=60);
 /*
 ajuste=0.77;
 translate([ajuste,-perfil/4,0])
cube([perfil/2,perfil/2,perfil],center=true);
 
 
 rotate(150)
  translate([-perfil/4,ajuste,0])
cube([perfil/2,perfil/2,perfil],center=true);
 */
 
 

 

 
 