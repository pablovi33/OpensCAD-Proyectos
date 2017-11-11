module placa(taladro=10) {
lonX=87.01;
lonY=97.18;
altoPlaca=1.5;



difference(){

union(){
linear_extrude(height=altoPlaca)
square([lonX+taladro,lonY+taladro],center=true);


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


ajusteC=2*(7+1);
//posicionamiento
translate([-17.9,0,0])

//centramiento
translate([0,(lonY/2)-(10/2),altoPlaca+(12/2)])
cube([24.19+ajusteC,10+taladro,12+1],center=true);

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
translate([(lonX/2)-(10/2),0,altoPlaca+(6/2)])

cube([10+taladro,17.75,6],center=true);

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

//#### CALCULOS JACK PODER #####

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

//ajuste
translate([1,1,0])

//centramiento
translate([-lonX/2+(3.5),-lonY/2+(3.5),0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);

//#### superior derecho #####

//centramiento
translate([lonX/2-(3.5),lonY/2-28.84,0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);

//#### inferior derecho #####

//ajuste
translate([-1,1,0])

//centramiento
translate([lonX/2-(3.5),-lonY/2+(3.5),0])
cylinder(r=(3.5)/2,h=3,$fn=100,center=true);
}//fin difference

}//fin module

placa();
