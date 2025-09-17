    use <polyline_join.scad>
	use <bezier_curve.scad>

$fn=50;
t_step = 0.05;
radius = 2;
	
p0 = [0, 0, 0];
p1 = [40, 60, 35];
p2 = [-50, 90, 0];
p3 = [0, 200, -35];
	
points = bezier_curve(t_step, [p0, p1, p2, p3] );
    
polyline_join(points)sphere(radius);     