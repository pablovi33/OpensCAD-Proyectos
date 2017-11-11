module conectorUSBBtX12p04Y10p6(){
      square([12.04,10.6],center=true);
}


module conectorMiditX21p2Y19p5(i=1,j=1){
 square([21.2*i,19.*j],center=true);

}

module conectorBTABTDtX15Y8p5(){
 square([15,8.5],center=true);
}
    

module TArduinoX53Y57(resoluciOn=100){
    circle(r=3.51/2,$fn=resoluciOn);
    
    translate([53,0])
    circle(r=3.51/2,$fn=resoluciOn);
    
    translate([5,-57])
    circle(r=3.51/2,$fn=resoluciOn);
    
    translate([5+28,-57])
    circle(r=3.51/2,$fn=resoluciOn);
}

TArduinoX53Y57(resoluciOn=100);
