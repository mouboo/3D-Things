$fn=72;

difference()
{
	cube([45,35,8]);

	grove();
	translate([45,0,0]) mirror([1,0,0]) grove();

	translate([5,25.5,-1]) cylinder(10,3,3);
	translate([40,25.5,-1]) cylinder(10,3,3);
	translate([22.5,5.5,-1]) cylinder(10,3,3);
	
	translate([-4,0,5]) rotate([0,0,30]) cube(20, center=true);
	translate([49,0,5]) rotate([0,0,60]) cube(20, center=true);
}

module grove()
{
	union()
	{
	difference()
		{
			translate([-15,30,0])  
			  rotate_extrude() translate([30, 7, 0]) circle(r = 4.5);
			translate([0,30,0]) cube(100);			
		}
	translate([15,29.99,7]) rotate([-90,0,0]) cylinder(50, 4.5, 4.5);
	translate([15,34.3,7]) rotate([-90,0,0]) cylinder(2,4.5,6.5);
	}
} 


