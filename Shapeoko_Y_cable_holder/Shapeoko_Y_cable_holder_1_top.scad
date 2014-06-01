$fn=36;


union()
{
	difference()
	{
		translate([0,0,0]) cube([50,26,7.5]);
		
		translate([5.5, 15, -1]) cylinder(30,3,3);
		translate([44.5, 15, -1]) cylinder(30,3,3);
	
		translate([18,-1,8]) rotate([-90,0,0]) cylinder(32, 4.5, 4.5);
		translate([18,25,8]) rotate([-90,0,0]) cylinder(2, 4.5, 6.5);
	
		translate([32,-1,8]) rotate([-90,0,0]) cylinder(32, 4.5, 4.5);
		translate([32,25,8]) rotate([-90,0,0]) cylinder(2, 4.5, 6.5);
	}

		translate([10,2,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,5,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,8,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,11,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,14,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,17,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,20,1.8]) rotate([45,0,0]) cube([30,2,2]);
		translate([10,23,1.8]) rotate([45,0,0]) cube([30,2,2]);
}