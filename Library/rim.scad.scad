// ----- Rim Modules -----
module rim()
{
    color("purple") rim_internal();
    rim_external();
}

module rim_external()
{
    rotate_extrude(angle = rotate_angle, convexity = 6)
    {
        rim_external_profile();
    }
}

module rim_external_profile()
{
    difference()
    {
        rim_external_profile_itself();
        if (add_tire_slots) tire_slots_profile();
    }
}

module rim_external_profile_itself()
{
    let (align = -(wheel_width - rim_external_height) / 2 + rim_external_align)
    {
        translate([0, align, 0])
        {
            bare_rim_external_profile();
        }
    }
}

module bare_rim_external_profile()
{
    translate([rim_external_inner_radius, - rim_external_height / 2, 0])
    square([rim_external_thicknes, rim_external_height]);
}

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