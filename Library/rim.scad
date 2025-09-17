// DRE 2025 \file rim.scad wheel rim module
// Exploded modules from 

/*

Parts of a Rim:
Spokes or Side (mutually exclusive)
Rim
Barrel
Valve Stem
Outer Lip
Inner Lip

*/

// The degrees angle of the rim to construct
angle = 360;
// wheel width across axle
wheel_width = 88.9;// mm 3.5 inch width

wheel_radius = wheel_diameter / 2;
// convexity of rim
convexity = 6;

// -1 - the same as spoke height * 2
rim_internal_height_mm = wheel_width * 0.8;

// -1 - the same as wheel width
rim_external_height_mm =  -1;
rim_external_height = (rim_external_height_mm == -1) ? wheel_width : rim_external_height_mm;
rim_external_align = (rim_external_align_percent < 0)
                     ? rim_external_align_mm
                     : (wheel_width - rim_external_height) * rim_external_align_percent / 100;
rim_external_inner_radius = hub_radius + spoke_length + rim_internal_thicknes;    
rim_external_thicknes = 2;
rim_internal_height = (rim_internal_height_mm == -1) ? spoke_height * 2 : rim_internal_height_mm;

spoke_length = 0;
/* [Hub] */
// hub is the interface from the suspension to the wheel 
// 15.875 mm
hub_diameter = 20;
hub_radius = hub_diameter / 2;

/* [Rim] */
rim_internal_thicknes = 8;


rim_internal_align = (rim_internal_align_percent < 0)
                     ? rim_internal_align_mm
                     : (wheel_width - rim_internal_height) * rim_internal_align_percent / 100;

rim_internal_inner_radius = hub_radius + spoke_length;
rim_external_inner_radius = hub_radius + spoke_length + rim_internal_thicknes;
rim_external_radius = rim_external_inner_radius + rim_external_thicknes;

/* [Barrel]  */

// ----- Rim Modules -----
//module rim()
//{
//    color("purple") rim_internal();
//    rim_external();
//}

//module rim_external()
//{
//    rotate_extrude(angle = rotate_angle, convexity = 6)
//    {
//        rim_external_profile();
//    }
//}

//module rim_external_profile()
//{
//    difference()
//    {
        //Rim profile
//        rim_external_profile_itself();
        //if (add_tire_slots) tire_slots_profile();
//    }
//}

//module rim_external_profile_itself()
//{
//    let (align = -(wheel_width - rim_external_height) / 2 + rim_external_align)
//    {
//        translate([0, align, 0])
//        {
//            bare_rim_external_profile();
//        }
//    }
//}

//module bare_rim_external_profile()
//{
//    translate([rim_external_inner_radius, - rim_external_height / 2, 0])
//    square([rim_external_thicknes, rim_external_height]);
//}
// the rim hub alignment 0 through 100% with the front face
align = 100;
thicknes = 8;
// height of the hub
height = 80;
rotate_angle = 360; // degrees 

module rim_internal(thicknes = rim_internal_thicknes, height = rim_internal_height, angle = rotate_angle)
{
    rotate_extrude(angle = angle, convexity = 6)
    {
        rim_internal_profile(thicknes = thicknes, height = height);
    }
}

module rim_internal_profile(thicknes, height)
{
    let (align = -(wheel_width - rim_internal_height) / 2 + rim_internal_align)
    {
        translate([0, align, 0])
        {
            bare_rim_internal_profile(thicknes = thicknes, height = height);
        }
    }
}

module bare_rim_internal_profile(thicknes, height)
{
    translate([rim_internal_inner_radius, - rim_internal_height / 2, 0])
    square([thicknes, height]);
}
// rotate_extrudes including barrel
rim_internal( 8, 80, 360);
// applies a linear translation relative to [rim_internal_inner_radius, - rim_internal_height /2, 0]
rim_internal_profile(thicknes, height);
// internal "profile" with no explanation
//bare_rim_internal_profile(thicknes, height);

//rim();
