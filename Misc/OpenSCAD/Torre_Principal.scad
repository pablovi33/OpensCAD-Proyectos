//Torre principal

module central(h=150){
    
    for(i=[1:2:8]){
    rotate((360/8)*i)
    translate([150,0,(300-h)/2])
    rotate((360/8)*i)
    cube([50,50,300],center=true);
    
    rotate((360/8)*i)
    translate([150,0,(300/2)+((300-h)/2)])
    rotate((360/8)*i)
    linear_extrude(height=80,scale=0,twist=0)
    square([50,50],center=true);
    }
        
        
        
    translate([0,0,((250-h)/2)])
    cube([200,200,250],center=true);    
    
    }

    


central();
