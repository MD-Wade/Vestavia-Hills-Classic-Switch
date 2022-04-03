image_index = min(image_index + (0.35 * g.gameTimescale), image_number - 1);
if speed<=0 and (image_index >= image_number - 1) {
my_id=instance_create(x,y,objGoreSplatter)
my_id.image_xscale=image_xscale
my_id.image_yscale=image_yscale
instance_destroy()
}

