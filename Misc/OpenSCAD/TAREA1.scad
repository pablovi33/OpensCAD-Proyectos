b=10;
h=5;
a=10;
radio=5;
resta=1;

// **************ENSAMBLE*****************

translate([0,50,0])
union(){
    //Figura1
rotate(45)
translate([b,0,0])
cube([b,h,10],center=true);

    //Figura2
rotate(135)
translate([b,0,0])
cube([b,h,10],center=true);
    
    //Figura3
rotate(225)
translate([b,0,0])
cube([b,h,10],center=true);

    //Figura4
rotate(315)
translate([b,0,0])
cube([b,h,10],center=true);

    //Union1
translate([0,b,0])
rotate([0,90,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);

    //Union2
translate([0,-b,0])
rotate([0,90,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);

    //Union3
translate([b,0,0])
rotate([90,0,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);

    //Union4
translate([-b,0,0])
rotate([90,0,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);
}

// ***********TALADRO******************
union(){
//Esfera1
rotate(45)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);

//Esfera2
rotate(135)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);

//Esfera3
rotate(225)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);

//Esfera4
rotate(315)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);
}
//*************************************
//**************CORTE******************
//*************************************

translate([-50,0,0])
difference(){
// **************ENSAMBLE*****************
union(){
    //Figura1
rotate(45)
translate([b,0,0])
cube([b,h,10],center=true);

    //Figura2
rotate(135)
translate([b,0,0])
cube([b,h,10],center=true);
    
    //Figura3
rotate(225)
translate([b,0,0])
cube([b,h,10],center=true);

    //Figura4
rotate(315)
translate([b,0,0])
cube([b,h,10],center=true);

    //Union1
translate([0,b,0])
rotate([0,90,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);

    //Union2
translate([0,-b,0])
rotate([0,90,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);

    //Union3
translate([b,0,0])
rotate([90,0,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);

    //Union4
translate([-b,0,0])
rotate([90,0,0])
cylinder(r=1,Sfn=5,h=2*b,center=true);
}

// ***********TALADRO******************
union(){
//Esfera1
rotate(45)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);

//Esfera2
rotate(135)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);

//Esfera3
rotate(225)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);

//Esfera4
rotate(315)
translate([(1.5*b)+(radio-3),0,0])
sphere(r=radio,Sfn=50);
}
}
