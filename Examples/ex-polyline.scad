// https://opensource.org/license/lgpl-3-0
/**
* ex-polyline_join.scad
*
* @copyright Justin Lin, 2021
* @license https://opensource.org/licenses/lgpl-3.0.html
*
* @see https://openhome.cc/eGossip/OpenSCAD/lib3x-polyline_join.html
*
**/
use <../Library/polyline_join.scad>
// Place a join on each point. Hull each pair of joins and union all convex hulls.

// Parameters
//// points : a list of points.


polyline_join([[0, 0], [10, 0], [10, 10], [0, 10], [0,0]]) 
    square(2);

polyline_join([[15, 0], [25, 0], [25, 10], [15, 10]]) 
{
    square(1);
    circle(2);
    square(1);
    circle(2);
}

translate([30, 30, 0])polyline_join([[0, 0], [10, 0] ]) 
    square(2);
