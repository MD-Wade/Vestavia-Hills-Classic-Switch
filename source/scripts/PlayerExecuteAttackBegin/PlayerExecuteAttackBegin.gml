/// @description PlayerExecuteAttackBegin();
function PlayerExecuteAttackBegin() {

	//Determine if Critical
	weaponCritcialChance = PlayerReturnCalculationCritical();
	attackCritical = chance(weaponCritcialChance);
	if (attackCritical) {
	    attackCriticalFactor = rr(GameReturnActorStat("criticalFactorMin"), GameReturnActorStat("criticalFactorMax"));
	    animFlickerCrit = 1.0;
	    GameExecuteAchievement(ACHIEVEMENTS.LUCKY_SHOT);
	    sound_here(sndWeaponCritical, 192, false, rr(0.90, 1.0));
	}   else    {
	    attackCriticalFactor = 1.0;
	}

	//Update Weapon
	PlayerExecuteWeaponUpdate();

	//Begin Attack of Determinate Type
	switch (WeaponReturnStat("weaponType"))  {
	    case "Gun":
	        if (weaponAmmo[weaponSelected] > 0) {
	            stateCurrent = PSTATES.Attack;
	            animSprite = PlayerReturnSpriteAttack();
	            animFrame = 0;
	            PlayerExecuteGunshot();
	            weaponAmmo[weaponSelected] = max(weaponAmmo[weaponSelected] - 1, 0);
	        }   else
	                sound(sndWeaponEmpty, 1);
	        break;

	    case "Melee":
	        if (GameReturnActorStat("Stamina") >= (WeaponReturnStat("meleeStamina")))    {
	            stateCurrent = PSTATES.Attack;
	            animSprite = PlayerReturnSpriteAttack()
	            animFrame = 0;
            
	            var _soundPitch = rr(0.94, 1.02);
	            if attackCritical
	                _soundPitch = rr(0.70, 0.78);
	            sound(choose(sndMeleeSwing1, sndMeleeSwing2, sndMeleeSwing3), _soundPitch);
	        }   else    {
	            guiStaminaFlicker = 1;
	            animFlickerStamina = 1.0;
	            sound_here(sndUIInvalid, 192, false);
	        }
	        break;
        
	    case "Consumable":
	        animSprite = PlayerReturnSpriteAttack();
	        stateCurrent = PSTATES.Attack;
        
	        //Play Sound
	        switch (weaponCurrent[weaponSelected])  {
	            case "Cigarette":
	                sound_here(sndConsumableCigarette, 192, false, rr(0.85, 1.0));
	                break;
	        }
        
	        break;
	}

	//Clear List
	ds_list_clear(weaponMeleeCollisionsList);



}
