/// @description Use if Applicable

var _userCash = GameReturnActorStat("cashAmount", userID);
var _userCost = MysteryReturnCost(userID);

switch (stateCurrent)   {
    case MYSTERY_STATES.Normal:
        if (_userCash >= _userCost)    {
            g.gameShowArrowMystery = false;
            soundIndexCurrent = sound_here(soundIndexBegin, soundDistance, false, 1);
            stateCurrent = MYSTERY_STATES.Opening;
            
            //Cost Player
            GameExecuteActorStatAdd("cashAmount", _userCost * -1, userID);
            if is_undefined(mysteryUseMap[? userID])   {
                mysteryUseMap[? userID] = 1;
            }   else    {
                mysteryUseMap[? userID] ++;
            }
            
            //Determine Random Gun Chance
            if (mysteryUseMap[? userID] == 1)  {
                mysteryGunChance = 0.85;
            }   else    {
                mysteryGunChance = mysteryGunChanceBase;
            }
        }   else    {
            sound_here(sndUIInvalid, soundDistance, false);
        }

        break;
        
    case MYSTERY_STATES.Item:
        if (userID != noone)    {
            with (userID)    {
                for (var i = 0; i < weaponSlots; i ++)  {
                    if (weaponCurrent[i] == "Unarmed")   {
                        weaponSelected = i;
                        PlayerExecuteWeaponUpdate();
                        break;
                    }
                }

                //Give Weapon
                PlayerExecuteWeaponSet(weaponSelected, other.weaponIndex);
            }
        }
        
        mysteryTickPresent = 0;
        stateCurrent = MYSTERY_STATES.Normal;
        event_user(1);
        break;
}

