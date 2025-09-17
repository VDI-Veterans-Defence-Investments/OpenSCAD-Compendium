use <hashmap.scad>
use <hashmap_get.scad>
use <geom_tetrahedron.scad>
use <geom_hexahedron.scad>
use <geom_octahedron.scad>
use <geom_dodecahedron.scad>
use <geom_icosahedron.scad>
use <wireframe.scad>

number_of_faces = 8; // [3, 6, 8, 12, 20]
radius = 10;
deep = 1;
outer_thickness = 1;
inner_thickness = 1;
detail = 0;

platonic_solid_wireframe(number_of_faces, radius, deep, outer_thickness, inner_thickness, detail);

module platonic_solid_wireframe(number_of_faces, radius, deep, outer_thickness, inner_thickness, detail) {
	polyhedra = hashmap([
		[3, function(r, d) geom_tetrahedron(r, d)],
		[6, function(r, d) geom_hexahedron(r, d)],
		[8, function(r, d) geom_octahedron(r, d)],
		[12, function(r, d) geom_dodecahedron(r, d)],
		[20, function(r, d) geom_icosahedron(r, d)],
	]);

	f_polyhedron = hashmap_get(polyhedra, number_of_faces);

	geom = f_polyhedron(radius, detail);

	wireframe(
	    geom[0], 
		geom[1], 
		deep, 
		outer_thickness, 
		inner_thickness, 
		[for(p = geom[0]) p / norm(p)]
	);
}
