$fn=36;


hole_r = 2.25;


module holes()
{
	for (a = [0:4]) 
	{
		rotate([0,-(90-31.71),a*72]) translate([0,0,-15.5]) cylinder(11, hole_r, hole_r);
	}
}

c=30;

module icosahedron_connector(){

	difference()
	{
		sphere(16);
		
		// top cutaway
		for (a = [0:4])
		{
			rotate([0, 0, 36+(a*72)]) translate([0, -c/2, 4.5]) rotate([0,31.71,0]) cube(c);
		}
		translate([0,0,18.5]) cube(c, center=true);
	
		//side cutaway
		for (a = [0:4])
		{
			rotate([0, 0, 36+(a*72)]) translate([8, -c/2, -12]) rotate([0,31.71,0]) cube(c);
		}
		
		//bottom cutaway
		translate([0,0,-26]) cube(c, center=true);
	
		// holes
		holes();
	}
}

translate([0,0,11])
	icosahedron_connector();