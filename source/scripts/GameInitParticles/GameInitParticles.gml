/// @description GameInitParticles();
function GameInitParticles() {

	g.particleSystem = part_system_create();
	part_system_depth(g.particleSystem, -35);

	g.particleSmoke = part_type_create();
	part_type_sprite(g.particleSmoke,  partSmoke, 1, 1, 0);
	part_type_size(g.particleSmoke, 0.8, 1.2, -0.01, 0);
	part_type_scale(g.particleSmoke, 1, 1);
	part_type_color2(g.particleSmoke, c_white, c_gray);
	part_type_alpha3(g.particleSmoke, 0, 1, 0);
	part_type_speed(g.particleSmoke, 0.2, 1, 0, 0);
	part_type_direction(g.particleSmoke, 30, 75, 0.20, 5);
	part_type_orientation(g.particleSmoke, 0, 0, 0, 0, 1);
	part_type_blend(g.particleSmoke, 1);
	part_type_life(g.particleSmoke, 60, 300);



}
