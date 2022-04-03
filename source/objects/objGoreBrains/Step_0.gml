dist-=speed
if dist<=0 {
if speed>0 {
my_id=instance_create(x,y,objGoreDrop)
my_id.direction=direction
speed=0
image_speed=0
my_id.speed=0.1
}}  else    {
    particle_bake_surface();
}

