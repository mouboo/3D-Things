$fn=36;


hole_r = 2.25;


module holes()
{
	for (a = [0:4]) 
	{
		rotate([0,-(90-31.71),a*72]) translate([0,0,-18.5]) cylinder(11, hole_r, hole_r);
	}
}

c=30;

module icosahedron_connector(){

	difference()
	{
		union()
		{
			sphere(17);
			translate([0,0,-20]) cylinder(10,10,10);
		}

		translate([-15,0,0]) cube([30,6,45],center=true);

		cylinder(45,3,3, center=true);
		
		// top cutaway
		for (a = [0:4])
		{
			rotate([0, 0, 36+(a*72)]) translate([0, -c/2, 4.5]) rotate([0,31.71,0]) cube(c);
		}
		translate([0,0,18.5]) cube(c, center=true);
	
		//side cutaway
		for (a = [0:4])
		{
			rotate([0, 0, 36+(a*72)]) translate([10.1, -c/2, -13.5]) rotate([0,31.71,0]) cube(c);
		}
		
		//bottom cutaway
		translate([0,0,-36]) cube(c, center=true);
	
		// holes
		holes();
	}
}

translate([0,0,20]) // was 11
	icosahedron_connector();