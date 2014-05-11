// Cord support for icosahedron lamp

$fn=36;

difference()
{
	union()
	{
		cylinder(5,12.5,15);
		translate([0,0,5]) cylinder(5,15,13.5);
	}
	translate([0,0,-1]) cylinder(12,4,4); // cord center
	translate([0,0,4.7]) cylinder(6,10.5,10.5); // connecting well
	translate([0,0,9.6]) cylinder(1,10.5,11.5); // chamfer
	translate([0,-3.5,-1]) cube([16,7,12]);
}