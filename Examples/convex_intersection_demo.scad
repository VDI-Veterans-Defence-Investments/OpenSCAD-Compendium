use <../Library/hull_polyline2d.scad>
use <../Library/ptf_rotate.scad>
use <../Library/shape_square.scad>
use <../Library/_convex_intersection.scad>

sq1 = shape_square(size = 10, corner_r = 3, $fn = 12);
sq2 = [for(p = sq1) ptf_rotate(p + [5, 0], 45)];
sq3 = [for(p = sq1) ptf_rotate(p + [5, 0], -45)];

intersection1 = _convex_intersection(sq1, sq2);
intersection2 = _convex_intersection(intersection1, sq3);

polygon(intersection1);    
#polygon(intersection2);    

%polygon(sq1);
%polygon(sq2);
%polygon(sq3);
