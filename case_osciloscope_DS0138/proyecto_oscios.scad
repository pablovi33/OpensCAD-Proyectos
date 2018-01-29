module cara(){
difference(){
square([117,76.7]);

translate([6.5,14.3])
square([12.7,7.2]);
    
    translate([6.5,31.5])
    square([12.7,7.2]);
    
    translate([6.5,48.7])
    square([12.7,7.2]);
        
    translate([28.7,10.7])
    square([60,42.6]);
    
    translate([93.5,2.2])
    square([6,6]);
    
    translate([105,15])
    square([6,6]);
    
    translate([105,27])
    square([6,6]);
    
    translate([105,39])
    square([6,6]);
    
    translate([105,51])
    square([6,6]);
    
    
}
}

module cara_negativo(){
    translate([6.5,14.3])
square([12.7,7.2]);
    
    translate([6.5,31.5])
    square([12.7,7.2]);
    
    translate([6.5,48.7])
    square([12.7,7.2]);
        
    translate([28.7,10.7])
    square([60,42.6]);
    
    translate([93.5,2.2])
    square([6,6]);
    
    translate([105,15])
    square([6,6]);
    
    translate([105,27])
    square([6,6]);
    
    translate([105,39])
    square([6,6]);
    
    translate([105,51])
    square([6,6]);
    
     
    }
    
module costados(){
for(i=[0:1])
    translate([i*80,0])
square([76.7,16.5]);    

translate([0,20])
square([112,16.5]);
}

module conec(){
difference(){
    square([112,16.5]);
    
    translate([10.7,9.8])
    circle(r=5.3,$fn=100);
    
    translate([92,4.1])
    square([9,11]);
}
}

module conec_negativo(){
    translate([10.7,9.8])
    circle(r=5.3,$fn=100);
    
    translate([92,4.1])
    square([9,11]);
}





module tornillos(){
    difference(){
    square([117,76.7]);
        
    translate([3.3+(3.4/2),3.6+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    
    translate([3.3+3.4+103.5+(3.4/2),3.6+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    
    translate([3.3+3.4+103.5+(3.4/2),3.6+3.4+63.3+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    
    translate([3.3+(3.4/2),3.6+3.4+63.3+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    }
}

module tornillos_negativo(){
    translate([3.3+(3.4/2),3.6+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    
    translate([3.3+3.4+103.5+(3.4/2),3.6+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    
    translate([3.3+3.4+103.5+(3.4/2),3.6+3.4+63.3+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    
    translate([3.3+(3.4/2),3.6+3.4+63.3+(3.4/2)])
    circle(r=3.4/2,$fn=100);
    }

translate([-112/2,-76.7/2])
tornillos_negativo();

