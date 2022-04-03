/// @description PlayerStep_Master();
function PlayerStep_Master() {

	switch (stateCurrent)   {
	    case PSTATES.Walk:
	        PlayerStepInputs();
	        PlayerStepMovement();
	        PlayerStepCamera();
	        PlayerStepAudio();
	        PlayerStepAnimation();
	        PlayerStepInteractTarget();
	        PlayerStepTriggerAttack();
	        PlayerStepTriggerInteract();
	        PlayerStepTriggerReload();
	        PlayerStepWeaponSwap();
	        PlayerStepPickup();
	        PlayerStepStamina();
	        PlayerStepGrayscaleAlive();
	    break;
        
	    case PSTATES.Attack:
	        PlayerStepInputs();
	        PlayerStepMovement();
	        PlayerStepCamera();
	        PlayerStepAudio();
	        PlayerStepAnimationAttack();
	        PlayerStepInteractTarget();
	        PlayerStepPickup();
	        PlayerStepAttack();
	        PlayerStepGrayscaleAlive();
	    break;
        
	    case PSTATES.Reload:
	        PlayerStepInputs();
	        PlayerStepMovement();
	        PlayerStepCamera();
	        PlayerStepAudio();
	        PlayerStepReload();
	        PlayerStepInteractTarget();
	        PlayerStepPickup();
	        PlayerStepStamina();
	        PlayerStepGrayscaleAlive();
	    break;

	    case PSTATES.Interact:
	        PlayerStepInputs();
	        PlayerStepMovement();
	        PlayerStepCamera();
	        PlayerStepAudio();
	        PlayerStepInteract();
	        PlayerStepInteractTarget();
	        PlayerStepPickup();
	        PlayerStepStamina();
	        PlayerStepGrayscaleAlive();
        
	        //If Skippable, Can Do Other Things
	        if (interactionSkippable)   {
	            PlayerStepTriggerAttack();
	            PlayerStepTriggerInteract();
	        }
	    break;
        
	    case PSTATES.Barricading:
	        PlayerStepInputsNoMovement();
	        PlayerStepMovement();
	        PlayerStepCamera();
	        PlayerStepBarricading();
	        PlayerStepAudio();
	        PlayerStepGrayscaleAlive();
	    break;
    
	    case PSTATES.Dead:
	        PlayerStepInputsBlank();
	        PlayerStepMovement();
	        PlayerStepCamera();
	        PlayerStepAudio();
	        PlayerStepInteractBlank();
	        PlayerStepGrayscaleDead();
	        if gamepad_button_check_pressed(global.GP_ID, gp_face2)
	            GameExecuteRestart();
	    break;
	}

	//Constant Updates
	PlayerStepDepth();
	PlayerStepTimers();
	PlayerStepStatusEffects();

	stateLast = stateCurrent;



}
