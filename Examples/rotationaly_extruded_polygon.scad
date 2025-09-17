/*
rotate_extrude

Rotational extrusion spins a 2D shape around the Z-axis to form a solid which has rotational symmetry. One way to think of this operation is to imagine a Potter's wheel placed on the X-Y plane with its axis of rotation pointing up towards +Z. Then place the to-be-made object on this virtual Potter's wheel (possibly extending down below the X-Y plane towards -Z). The to-be-made object is the cross-section of the object on the X-Y plane (keeping only the right half, X >= 0). That is the 2D shape that will be fed to rotate_extrude() as the child in order to generate this solid. Note that the object started on the X-Y plane but is tilted up (rotated +90 degrees about the X-axis) to extrude.

Since a 2D shape is rendered by OpenSCAD on the X-Y plane, an alternative way to think of this operation is as follows: spins a 2D shape around the Y-axis to form a solid. The resultant solid is placed so that its axis of rotation lies along the Z-axis.

Just like the linear_extrude, the extrusion is always performed on the projection of the 2D polygon to the XY plane. Transformations like rotate, translate, etc. applied to the 2D polygon before extrusion modify the projection of the 2D polygon to the XY plane and therefore also modify the appearance of the final 3D object.

    A translation in Z of the 2D polygon has no effect on the result (as also the projection is not affected).
    A translation in X increases the diameter of the final object.
    A translation in Y results in a shift of the final object in Z direction.
    A rotation about the X or Y axis distorts the cross section of the final object, as also the projection to the XY plane is distorted.

Don't get confused, as OpenSCAD displays 2D polygons with a certain height in the Z direction, so the 2D object (with its height) appears to have a bigger projection to the XY plane. But for the projection to the XY plane and also for the later extrusion only the base polygon without height is used.

You cannot use rotate_extrude to produce a helix or screw thread. Doing this properly can be difficult, so it's best to find a thread library to make them for you.

The 2D shape must lie completely on either the right (recommended) or the left side of the Y-axis. More precisely speaking, every vertex of the shape must have either x >= 0 or x <= 0. If the shape spans the X axis a warning appears in the console windows and the rotate_extrude() is ignored. If the 2D shape touches the Y axis, i.e. at x=0, it must be a line that touches, not a point, as a point results in a zero thickness 3D object, which is invalid and results in a CGAL error. For OpenSCAD versions prior to 2016.xxxx, if the shape is in the negative axis the resulting faces are oriented inside-out, which may cause undesired effects.
Usage

rotate_extrude(angle = 360, start=0, convexity = 2) {...}

Right-hand grip rule

In 2021.01 and previous, you must use parameter names due to a backward compatibility issue.

    convexity : If the extrusion fails for a non-trival 2D shape, try setting the convexity parameter (the default is not 10, but 10 is a "good" value to try).  The convexity parameter specifies the maximum number of front sides (or back sides) a ray intersecting the object might penetrate. This parameter is only needed for correctly displaying the object in OpenCSG preview mode when using the standard Goldfeather algorithm and has no effect on the polyhedron rendering (the mesh generation).


The convexity of a primitive is the maximum number of front (or back) faces of the primitive at a single position. For example, the convexity of a sphere is one and the convexity of a torus is two. 
    
    angle [Note: Requires version 2019.05] : Defaults to 360. Specifies the number of degrees to sweep, starting at the positive X axis. The direction of the sweep follows the Right Hand Rule, hence a negative angle sweeps clockwise.
    start [Note: Requires version Development snapshot] : Defaults to 0 if angle is specified, and 180 if not. Specifies the starting angle of the extrusion, counter-clockwise from the positive X axis.
    $fa : minimum angle (in degrees) of each fragment.
    $fs : minimum circumferential length of each fragment.
    $fn : fixed number of fragments in 360 degrees. Values of 3 or more override $fa and $fs

        $fa, $fs and $fn must be named parameters. click here for more details,.
        
        

*/
// Polygon - based extrusion
$fa = 1;
$fs = 0.4;
$fn = 50;

// \var height 1 y distance
h1 = 23;
// \var height 2 y distance
h2 = 10;
// \var height 3 y distance
h3 = 8;
// \var distances from origin
// first segment start x distance
d1 = 25; 
// second segment x distance
d2 = 12;
// final segment x distance 
d3 = 15;


// Points
p0 = [0, 0];
p1 = [0, h1 + h2];
p2 = [d3, h1];
p3 = [d1 + d2, h1 + h2];
p4 = [d1 + d2, h3];
p5 = [d1, 0];



// The rotated polygon profile

points = [p0, p1, p2, p3, p4, p5];

// DEBUG 
echo("polygon points : ", p0, p1, p2, p3, p4, p5 );
// demo the 2D object here
color("cyan")translate([0, 150, 0])rotate([ 90, 0, 90])polygon(points);
// DEBUG
// extend from x-y axis origin by x, y, z
hub_radius = 30;
rotate_extrude(angle=360)translate([hub_radius,0,0])
    polygon(points);