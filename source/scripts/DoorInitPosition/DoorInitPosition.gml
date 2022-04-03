/// @description DoorInitPosition();
function DoorInitPosition() {

	doorOpenMirror = 1;
	doorVertical = false;

	switch (image_angle)    {
	    case 0:
	        doorOpenMirror = 1;
	        doorVertical = false;
	        y += 2;
	        break;
	    case 90:
	        doorOpenMirror = 1;
	        doorVertical = true;
	        x += 2;
	        break;
	    case 180:
	        doorOpenMirror = -1;
	        doorVertical = false;
	        y += 2;
	        break;
	    case 270:
	        doorOpenMirror = -1;
	        doorVertical = true;
	        x += 2;
	        break;
	}

	drawX = x;
	drawY = y;

	//Collisions
	doorCollisionInteractionDistance = 32;
	doorCollisionInteraction_x1 = bbox_left + lengthdir_x(doorCollisionInteractionDistance, image_angle);
	doorCollisionInteraction_y1 = bbox_top + lengthdir_y(doorCollisionInteractionDistance, image_angle);
	doorCollisionInteraction_x2 = bbox_right + lengthdir_x(doorCollisionInteractionDistance, image_angle);
	doorCollisionInteraction_y2 = bbox_bottom + lengthdir_y(doorCollisionInteractionDistance, image_angle);



}
