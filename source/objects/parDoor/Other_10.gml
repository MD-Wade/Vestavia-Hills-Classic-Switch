/// @description Open Door if Applicable

var _holdAngle = image_angle;

if doorOpen
    var _doorOpenTarget = doorAngleClosed;
else
    var _doorOpenTarget = doorAngleOpen;

//Check if Spot is Viable
image_angle = _doorOpenTarget;
if place_meeting(x, y, parActor)    {
    image_angle = _holdAngle;
    exit;
}

//Continue
doorOpen = !doorOpen;
sound_here(sndDoorOpen1, soundDistance, false, rr(0.98, 1.0));

