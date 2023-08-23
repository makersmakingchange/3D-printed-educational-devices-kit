 $fn =100;
flexThick = 1.0;
outerDiam = 73;
innerDiam = 2.0;
outerShaftDiam = 4.0;
//create pressure plate
difference(){
union(){
cylinder(d=outerDiam,h=flexThick);//main disc
cylinder(d=outerShaftDiam,h=5);// shaft sleeve
translate([0,0,4])sphere(d = outerShaftDiam);
rotate([90,0,0])translate([0,1.0,0])cylinder(d=2,h=outerDiam, center = true);//dice tumbler ridge
} //end union
//begin subtractions
cylinder(d=innerDiam,h=5);//hollow out shaft sleeve
}//end difference

