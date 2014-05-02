// Pen mount for Taz 3

$fn=36;

module half_hook()
{
	difference()
	{
		union()
		{
			square([5,10]);
			square([4,11]);
			translate([4,10,0]) circle(1);
		}
		translate([10,5,0]) circle(6);
	}
}

module hook()
{
	half_hook();
	mirror([1,0,0]) half_hook();
}

module base_plate()
{
	linear_extrude(height=5)
	{
		union()
		{
			hull()
			{
				translate([2,2,0]) circle(2);
				translate([2,28-1,0]) circle(2);	
				translate([12,43,0]) circle(2);
				translate([34,43,0]) circle(2);
				translate([34,2,0]) circle(2);
			}
			translate([18.7,45,0]) hook();
			translate([18.7,0,0]) rotate([180,0,0]) hook();
		}
	}
}

module holes()
{
		translate([0,0,-1]) cylinder(7, 1.7, 1.7);
		translate([26,0,-1]) cylinder(7, 1.7, 1.7);
}

module vblock()
{
	difference()
	{
		cube([15, 43, 6.5]);
		translate ([7.5, -1, 1]) rotate([0,-40,0]) cube([20,47,20]);
		translate ([7.5, -1, 1]) rotate([0,-50,0]) cube([20,47,20]);
	}
}

module taz_pen_mount()
{
	difference()
	{
		union()
		{
			base_plate();
			translate([11.2,1,5]) vblock();
		}
		translate([6,15,0]) holes();
	}
}

taz_pen_mount();












