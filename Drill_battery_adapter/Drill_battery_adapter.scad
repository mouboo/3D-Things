$fn=72;
mu=0.01;

module base_shaft()
{
	translate([13,13,0])
	{
		union()
		{
			//most basic form
			hull()
			{
				translate([0,22,0]) cylinder(49.5,13,13);
				cylinder(49.5,13,13);
			}
			
			//guide
			translate([-15,5.5,15.5]) cube([2,11,34]);
		}
	}
}

module connector_cutouts()
{
	translate([0-mu,20,-mu]) cube([3+2*mu,8,15.5+mu]);
	translate([23+mu,20,-mu]) cube([3+2*mu,8,15.5+mu]);
}

module connector_slots()
{
	translate([2,14,3]) cube([3,20,50]);
	translate([21,14,3]) cube([3,20,50]);
}

module guide_cutouts()
{
	union()
	{
		translate([-2,18.5-mu,15.5])
			rotate([-90,0,0])
				linear_extrude(height=11+2*mu) polygon([[0,0+mu],[2,0+mu],[0,-2]]);
		
		translate([2.5,20,15.5-mu])
			rotate([0,-90,0])
				linear_extrude(height=5) polygon([[0,0],[0,8],[4,4]]);
	}
	translate([28.5,20,15.5-mu])
		rotate([0,-90,0])
			linear_extrude(height=5) polygon([[0,0],[0,8],[4,4]]);	
}

module main_cavity()
{
	translate([3,16.5,25]) cube([20,15,40]);
	translate([5,10.5,25]) cube([16,27,40]);
}

module base_lock_planes()
{
	translate([0,0,37.5]) cube([26,5,13]);
	translate([0,43,37.5]) cube([26,5,13]);
}

module base_lock_hole()
{
	translate([13,0,43.5]) rotate([-90,0,0]) cylinder(48,2.5,2.5);
}

module debug_intersection_1()
{
	translate([13,-1,-1]) cube([100,100,100]);
}

module debug_intersection_2()
{
	translate([-5,-1,-1]) cube([50,26,100]);
}

module debug_connector_bolt()
{
	translate([2,20.5,40]) cube([8,7,7]);
	translate([16,20.5,40]) cube([8,7,7]);
}

module complete_part()
{
	union()
	{
		difference()
		{
			base_shaft();
			connector_cutouts();
			connector_slots();
			guide_cutouts();
			main_cavity();
			base_lock_planes();
			base_lock_hole();
			//debug_intersection_1();
			//debug_intersection_2();
		}
		//debug_connector_bolt();
	}
}

complete_part();
