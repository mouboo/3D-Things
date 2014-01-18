$fn=72;

mu=0.01;

leg_angle=35;
tot_z=17;

module drop(h,r)
{
	linear_extrude(height=h)
	{
		union()
		{
			circle(r);
			rotate([0,0,-135]) square(r);
		}
	}
}

module leg()
{
	rotate([0,0,30])
	{
		union()
		{
			difference()
			{
				cube([16,30,tot_z]);
				translate([8,-mu,8]) rotate([-90,0,0]) drop(30+2*mu, 4.25);
			}
			translate([-17,25,0]) cube([17,5,tot_z]);
		}
	}
}

module support()
{
	difference()
	{
		cube([12,14,tot_z]);
		translate([0,6,-mu]) cylinder(tot_z+2*mu,4.25,4.25);
		translate([-mu,6,-mu]) cube([4.25+mu,10,tot_z+2*mu]);
	}
}

module fill_polygon()
{
	linear_extrude(height=tot_z)
	{
		polygon(points=[[0,21],[18,23],[25,10],[0,5]], paths=[[0,1,2,3]]);
	}
}

module half()
{
	difference()
	{
		union()
		{
			translate([15+12,0,0]) leg();
			translate([0,20,0]) support();
			fill_polygon();
		}
		
		translate([15+12,0,0]) rotate([0,0,30]) 
			translate([0,30,-mu]) cube([16,30,tot_z+2*mu]);
	}
}


half();
mirror([1,0,0]) half();
