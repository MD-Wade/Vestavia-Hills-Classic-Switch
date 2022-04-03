/// @description PlayerStepTriggerInteract();
function PlayerStepTriggerInteract() {

	//Pickup
	if inputInteractPress    {
	    if (instance_exists(interactionInstance))   {
	        //Begin Interaction
	        interactionTick = 0;
	        interactionSkippable = false;
	        animSprite = PlayerReturnSpriteInteraction();
	        stateCurrent = PSTATES.Interact;
    
	        //Determine Object
	        var _interactableObject = interactionInstance.object_index;
	        if (object_is_ancestor(_interactableObject, parDoor))   {
	            PlayerExecuteDoorOpen(interactionInstance);
	        }   else    {
	            switch (_interactableObject)    {
	                case objBrokenWindow:
	                    if interactionInstance.windowBarricaded {
	                        sound_here(sndUIInvalid, 92, false);
	                    }   else    {
	                        animSprite = PlayerReturnSpriteInteraction();
	                        animFrame = 0;
	                        barricadeInstance = interactionInstance;
	                        stateCurrent = PSTATES.Barricading;
	                    }
	                break;
                    
	                case objWeapon:
	                    var _posWeapon = weaponSelected;
	                    var _weaponIndex = interactionInstance.weaponIndex;
	                    var _weaponAmmo = interactionInstance.weaponAmmoClip;
	                    var _weaponReserve = interactionInstance.weaponAmmoReserve;

	                    //Determine Free Slot
	                    if (weaponCurrent[_posWeapon] != "Unarmed") {
	                        for (var i = 0; i < weaponSlots; i ++)  {
	                            if (weaponCurrent[i] == "Unarmed")  {
	                                _posWeapon = i;
	                                break;
	                            }
	                        }

	                        if weaponCurrent[_posWeapon] != "Unarmed"   {
	                            PlayerExecuteWeaponThrow(_posWeapon);
	                        }
	                    }

	                    //Set Weapon
	                    PlayerExecuteWeaponSet(_posWeapon, _weaponIndex, id, 0, 0);
	                    weaponAmmo[_posWeapon] = _weaponAmmo;
	                    weaponAmmoReserve[_posWeapon] = _weaponReserve;
	                    instance_destroy(interactionInstance);
	                break;
                
	                case objLightSwitch:
	                case objMysteryBox:
	                case objHealthStation:
	                    with (interactionInstance)  {
	                        userID = other.id;
	                        event_user(0);
	                    } 
	                break;
	            }
	        }
	    }
	}



}
