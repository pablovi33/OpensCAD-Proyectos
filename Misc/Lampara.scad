use<cajaA3.scad>;

difference(){
cajaSCTapa(largo=30,ancho=25,alto=80,espesor=3,dientes=6,modo=1);


for(i=[0:5]){
    rotate((360/6)*i)
    translate([8,0,0])
    
 circle(d=5,$fn=100);   
    
}
translate([0,19+80])
rotate(90)
square([3,6],center=true);
}
