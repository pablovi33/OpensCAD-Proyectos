/****************************************************
---------------------CASTILLO------------------------
-----------------TORRES INTERIORES-------------------
*****************************************************/

/* MODULO:  defensoras(parametro,radio,resolucion,separacion,altura,h)

parametro------->numero de torres defensoras
radio----------->radio de las torres interiores
resolucion------>resolucion de las torres interiores
separacion------>alejamiento del centro de las torres inferiores
altura---------->altura de las torres inferiores
h--------------->altura de las torres defensoras
ladrillos------->numero de ladrillos en la parte superior de cada torre
*/

module interiores(parametro=7,radio=30,resolucion=50,separacion=100,altura=200,h=150){
            //picos

            for(i=[1:2:parametro*2]){
                rotate((360/(parametro*2))*i)
                translate([separacion,0,(altura/2)+((altura-h)/2)])
                union(){
                    linear_extrude(height=50,scale=0,twist=45)
                    circle(r=radio+5,$fn=resolucion);
                    }
                }


            //cilindros
            union(){
                for (i=[1:2:parametro*2]){
                    rotate((360/(parametro*2))*i)
                    translate([separacion,0,(altura-h)/2])
                    difference(){
                    cylinder(r=radio,$fn=resolucion,h=altura,center=true);
                    cylinder(r=radio-5,$fn=resolucion,h=altura+10,center=true);
            }
                }
            }
        }
        
interiores(8,30,50,100,200,150);