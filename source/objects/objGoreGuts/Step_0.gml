dist-=speed
image_angle+=speed*diradd*8
if dist<=0 {
if speed>0 {
repeat (8) {
my_id=instance_create(x-1+random(2),y-1+random(2),objGoreDrop2)
my_id.direction=random(360)
my_id.image_angle=my_id.direction
my_id.speed=0.1 * g.gameTimescale;
}
speed=0
image_speed=0

} else {if wait>0 wait-=1 else { particle_bake_surface()}}
}

