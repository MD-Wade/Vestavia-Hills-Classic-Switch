/// @description PlayerStepAnimationAttack();
function PlayerStepAnimationAttack() {

	//Don't Update Animation When Timescale is 0
	if (g.gameTimescale <= 0)
	    exit;

	//Determine Animation Speed (Primarily for Legs)
	animSpeed = (movementSpeedFactor * animSpeedMax);
	if animSpeed > 0    {
	    animFrameLegs += animSpeed;
	}   else    {
	    animFrameLegs = 0;
	}

	//Increment Tick
	var _calcSpeed = PlayerReturnCalculationAttackSpeed();
	weaponTickCurrent = approach(weaponTickCurrent, fs(WeaponReturnStat("attackSpeed")), (_calcSpeed * movementFactorTotal) * g.gameTimescale);
	var _interpAmount = (weaponTickCurrent / fs(WeaponReturnStat("attackSpeed")));
	var _animFrameCount = sprite_get_number(PlayerReturnSpriteAttack());

	//Proper Animation
	switch (WeaponReturnStat("weaponType")) {
	    case "Melee":
	    case "Consumable":
	        var _interpAmount = (weaponTickCurrent / fs(WeaponReturnStat("attackSpeed")));
	        animFrame = _animFrameCount * _interpAmount;
	        animSprite = PlayerReturnSpriteAttack();
	        break;
        
	    case "Gun":
	        if weaponAnimated   {
	            animFrame += animSpeed;
	        }   else    {
	            animFrame = approach(animFrame, _animFrameCount, animSpeedMax);
	            if animFrame >= (_animFrameCount)   {
	                animSprite = PlayerReturnSpriteWalk();
	                weaponAnimated = true;
	            }
	        }   break;
	}
        
	//Empty Click while Firing
	if (inputAttackPress)
	    if (_interpAmount < 1)
	        if WeaponReturnStat("weaponType") == "Gun"
	            sound_here(sndWeaponEmpty, 192, false, 1);

	//Finishing Attack
	if (_interpAmount >= 1)    {

	    //Stamina Drain
	    if (WeaponReturnStat("weaponType") == "Melee")   {
	        if (ds_list_size(weaponMeleeCollisionsList) > 0)   {
	            var _calcStaminaAmount = WeaponReturnStat("meleeStamina");
            
	        }   else    {
	            var _calcStaminaAmount = WeaponReturnStat("meleeStamina") * 1.5;
	        }
        
	        GameExecuteActorStatSet("Stamina", approach(GameReturnActorStat("Stamina"), 0, _calcStaminaAmount));
	        statsStaminaRate = 0;
	        statsStaminaTick = 0;
	    }
    
	    //Consumable
	    if (WeaponReturnStat("weaponType") == "Consumable") {
	        PlayerExecuteConsumable();
	    }

	    //Restart if Automatic
	    if (inputAttack and WeaponReturnStat("weaponAutomatic") and (weaponAmmo[weaponSelected] > 0))  {
	        PlayerExecuteAttackBegin();
	    }   else    {
	        stateCurrent = PSTATES.Walk;
	        animSprite = PlayerReturnSpriteWalk();
	    }
    
	    //Mirror Melee Weapon
	    if WeaponReturnStat("spriteMirror")
	        animMeleeMirror = animMeleeMirror * -1;
            
	    //Reanimate Gun
	    weaponAnimated = false;
	}



}
