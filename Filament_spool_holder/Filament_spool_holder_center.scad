$fn=100;

tot_z = 15;
chamfer_z = 10;

difference()
{
	// Solid
	union()
	{
		cylinder((tot_z-chamfer_z-2), 31, 31);
		cylinder(tot_z, 26, 26);
		translate([0, 0, (tot_z-chamfer_z)-3]) cylinder(chamfer_z, 31, 21);
	}

	// Center hole
	translate([0, 0, -1]) cylinder(tot_z+2, 7, 7);

	// 
	for(i = [0:2]) 
	{ 
		rotate([0,0,(360/3)*i]) translate([0,30,-1]) cylinder(tot_z+2, 18, 18);
	}

}
