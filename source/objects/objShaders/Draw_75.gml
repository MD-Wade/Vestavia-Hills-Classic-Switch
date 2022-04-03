/// @description Render Player HUD and Shader Effects

if (gaussianEnabled)    {
    ShadersDrawGaussian();
}   else    {
    ShadersDrawStandard();
}

//Render HUD's
with (objPlayer)    {
    PlayerDrawGUI();
}

