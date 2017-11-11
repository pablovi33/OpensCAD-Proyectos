/****************************************************
---------------------CASTILLO------------------------
-----------------TORRES DEFENSORAS-------------------
*****************************************************/

/* MODULO:  defensoras(parametro,radio,grosor,h,resolucion,separacion)

parametro------->numero de torres defensoras
radio----------->radio de las torres defensoras
grosor---------->grosor de los muros
h--------------->altura de las torres defensoras
resolucion------>resolucion de las torres defensoras
separacion------>alejamiento del centro de las torres defensoras
ladrillos------->numero de ladrillos en la parte superior de cada torre
*/


module defensoras(parametro=7,radio=30,grosor=20,h=150,resolucion=50,separacion=300,ladrillos=7){
union(){
            //GENERACIÓN DE TORRES
                for (i=[1:parametro]){
                    rotate((360/parametro)*i)
                    translate([separacion,0,0])
                    
                    //Torres individuales
                    union(){
                    
                    //Generacion de ladrillos
                    for(i=[1:ladrillos]){
                        rotate((360/ladrillos)*i)
                        translate([radio-5,0,h/2])
                        cube([5,10,20]);
                    }
                    
                    //Cilindros individuales
                    difference(){
                    cylinder(r=radio,$fn=resolucion,h=h+10,center=true);
                    cylinder(r=radio-5,$fn=resolucion,h=h+20,center=true);
                }}
            }
                
            //MUROS
            difference(){
            
            difference(){    
            cylinder(r=separacion+(grosor/2),$fn=parametro,h=h,center=true);
            cylinder(r=separacion-(grosor/2),$fn=parametro,h=h+10,center=true);
            }
            
            union(){
            for (i=[1:parametro]){
                    rotate((360/parametro)*i)
                    translate([separacion,0,0])
                    cylinder(r=radio,$fn=resolucion,h=h+20,center=true);
                    } 
                }
            }
    }}
        defensoras(8,30,20,150,50,300,7);