$fn=36;

difference()
{
	union()
	{
		cube([50,30,5]);
		translate([0,4,5]) cube([50,26,5]);
	}
	
	translate([5.5, 19, -1]) cylinder(30,3,3);
	translate([44.5, 19, -1]) cylinder(30,3,3);

	translate([25, 5, -1]) cylinder(30,3,3);
	translate([25, 5, 3.5]) cylinder(30, 5, 5);
	translate([20, -5, 3.5]) cube(10);

	translate([18,-1,10]) rotate([-90,0,0]) cylinder(32, 4.5, 4.5);
	translate([18,29,10]) rotate([-90,0,0]) cylinder(2, 4.5, 6.5);

	translate([32,-1,10]) rotate([-90,0,0]) cylinder(32, 4.5, 4.5);
	translate([32,29,10]) rotate([-90,0,0]) cylinder(2, 4.5, 6.5);
}