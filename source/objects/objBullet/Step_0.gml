/// @description Update

if !bulletReady
    exit;
    
drawAlpha = max(drawAlpha - drawAlphaSpeed, 0);
if drawAlpha <= 0   {
    instance_destroy();
}

