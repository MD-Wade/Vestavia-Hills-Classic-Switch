/// @description WeaponExecuteLoadStats();
function WeaponExecuteLoadStats() {

	var _jsonString = "{\"MP5\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":12,\"meleeStamina\":0,\"attackKnockback\":2.4,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":3,\"spriteWalk\":\"sprPlayerMP5\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":66,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackMP5\",\"gunReloadType\":\"Clip\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":1.2,\"weaponAutomatic\":1,\"gunReloadClip\":22,\"gunBulletPenetration\":2,\"attackSpeed\":0.15},\"Pot\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":7,\"meleeStamina\":4,\"attackKnockback\":4,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerPot\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":24,\"spriteAttack\":\"sprPlayerAttackPot\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.43},\"SilencedUzi\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":6,\"meleeStamina\":0,\"attackKnockback\":2,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":4,\"spriteWalk\":\"sprPlayerSilencedUzi\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":96,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackSilencedUzi\",\"gunReloadType\":\"Clip\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":1.2,\"weaponAutomatic\":1,\"gunReloadClip\":32,\"gunBulletPenetration\":1,\"attackSpeed\":0.08},\"Axe\":{\"gunBulletCount\":0,\"attackHurtType\":\"Cut\",\"weaponType\":\"Melee\",\"attackDamage\":14,\"meleeStamina\":14,\"attackKnockback\":4.75,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerAxe\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":30,\"spriteAttack\":\"sprPlayerAttackAxe\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.65},\"Katana\":{\"gunBulletCount\":0,\"attackHurtType\":\"Cut\",\"weaponType\":\"Melee\",\"attackDamage\":10,\"meleeStamina\":10,\"attackKnockback\":2.5,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerKatana\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":26,\"spriteAttack\":\"sprPlayerAttackKatana\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.33},\"Uzi\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":7,\"meleeStamina\":0,\"attackKnockback\":2,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":6,\"spriteWalk\":\"sprPlayerUzi\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":96,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackUzi\",\"gunReloadType\":\"Clip\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":1.2,\"weaponAutomatic\":1,\"gunReloadClip\":32,\"gunBulletPenetration\":2,\"attackSpeed\":0.08},\"M16\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":12,\"meleeStamina\":0,\"attackKnockback\":2.6,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":3,\"spriteWalk\":\"sprPlayerM16\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":90,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackM16\",\"gunReloadType\":\"Clip\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":1.35,\"weaponAutomatic\":1,\"gunReloadClip\":30,\"gunBulletPenetration\":3,\"attackSpeed\":0.13},\"Machete\":{\"gunBulletCount\":0,\"attackHurtType\":\"Cut\",\"weaponType\":\"Melee\",\"attackDamage\":12,\"meleeStamina\":9,\"attackKnockback\":3.25,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerMachete\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":26,\"spriteAttack\":\"sprPlayerAttackMachete\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.35},\"Nightstick\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":7,\"meleeStamina\":6,\"attackKnockback\":3.8,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerNightstick\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":22,\"spriteAttack\":\"sprPlayerAttackNightstick\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.35},\"PoolCue\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":5,\"meleeStamina\":6,\"attackKnockback\":3,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerPoolCue\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":30,\"spriteAttack\":\"sprPlayerAttackPoolCue\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.24},\"Sledgehammer\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":20,\"meleeStamina\":15,\"attackKnockback\":5.5,\"meleeFrameFirst\":5,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerSledgehammer\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":30,\"spriteAttack\":\"sprPlayerAttackSledgehammer\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":8,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.5},\"Bat\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":11,\"meleeStamina\":6,\"attackKnockback\":4.75,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerBat\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":26,\"spriteAttack\":\"sprPlayerAttackBat\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.4},\"Unarmed\":{\"gunBulletCount\":0,\"attackHurtType\":\"NonLethal\",\"weaponType\":\"Melee\",\"attackDamage\":4,\"meleeStamina\":5,\"attackKnockback\":4,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerUnarmed\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":20,\"spriteAttack\":\"sprPlayerAttackUnarmed\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.28},\"Shotgun\":{\"gunBulletCount\":9,\"attackHurtType\":\"Shotgun\",\"weaponType\":\"Gun\",\"attackDamage\":9,\"meleeStamina\":0,\"attackKnockback\":3.5,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":14,\"spriteWalk\":\"sprPlayerShotgun\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":12,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackShotgun\",\"gunReloadType\":\"Single\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":0.85,\"weaponAutomatic\":0,\"gunReloadClip\":5,\"gunBulletPenetration\":2,\"attackSpeed\":0.8},\"Skorpion\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":16,\"meleeStamina\":0,\"attackKnockback\":2,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":2,\"spriteWalk\":\"sprPlayerSkorpion\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":72,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackSkorpion\",\"gunReloadType\":\"Clip\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":1.2,\"weaponAutomatic\":1,\"gunReloadClip\":18,\"gunBulletPenetration\":1,\"attackSpeed\":0.2},\"DoubleBarrel\":{\"gunBulletCount\":10,\"attackHurtType\":\"Shotgun\",\"weaponType\":\"Gun\",\"attackDamage\":15,\"meleeStamina\":0,\"attackKnockback\":4,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":16,\"spriteWalk\":\"sprPlayerDoubleBarrel\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":12,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackDoubleBarrel\",\"gunReloadType\":\"Single\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":1,\"weaponAutomatic\":0,\"gunReloadClip\":2,\"gunBulletPenetration\":4,\"attackSpeed\":0.5},\"SilencedPistol\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":4,\"meleeStamina\":0,\"attackKnockback\":2,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":2,\"spriteWalk\":\"sprPlayerSilencedPistol\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":82,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackSilencedPistol\",\"gunReloadType\":\"Clip\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":0.8,\"weaponAutomatic\":0,\"gunReloadClip\":12,\"gunBulletPenetration\":2,\"attackSpeed\":0.08},\"Crowbar\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":11,\"meleeStamina\":9,\"attackKnockback\":5,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerCrowbar\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":24,\"spriteAttack\":\"sprPlayerAttackCrowbar\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.4},\"Club\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":10,\"meleeStamina\":6,\"attackKnockback\":4.5,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerClub\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":24,\"spriteAttack\":\"sprPlayerAttackClub\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.4},\"Pipe\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":9.5,\"meleeStamina\":6,\"attackKnockback\":4.5,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerPipe\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":24,\"spriteAttack\":\"sprPlayerAttackPipe\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.38},\"Knife\":{\"gunBulletCount\":0,\"attackHurtType\":\"Cut\",\"weaponType\":\"Melee\",\"attackDamage\":9,\"meleeStamina\":4,\"attackKnockback\":2,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerKnife\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":19,\"spriteAttack\":\"sprPlayerAttackKnife\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.26},\"Magnum\":{\"gunBulletCount\":1,\"attackHurtType\":\"Rifle\",\"weaponType\":\"Gun\",\"attackDamage\":32,\"meleeStamina\":0,\"attackKnockback\":5,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":0.25,\"spriteWalk\":\"sprPlayerMagnum\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":24,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackMagnum\",\"gunReloadType\":\"Single\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":0.65,\"weaponAutomatic\":0,\"gunReloadClip\":6,\"gunBulletPenetration\":5,\"attackSpeed\":0.6},\"PoolCueBroken\":{\"gunBulletCount\":0,\"attackHurtType\":\"Cut\",\"weaponType\":\"Melee\",\"attackDamage\":4,\"meleeStamina\":3,\"attackKnockback\":1.8,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerPoolCueBroken\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":20,\"spriteAttack\":\"sprPlayerAttackPoolCueBroken\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":0,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.28},\"Pan\":{\"gunBulletCount\":0,\"attackHurtType\":\"Blunt\",\"weaponType\":\"Melee\",\"attackDamage\":8,\"meleeStamina\":4,\"attackKnockback\":4,\"meleeFrameFirst\":2,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerPan\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":24,\"spriteAttack\":\"sprPlayerAttackPan\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":5,\"spriteMirror\":1,\"gunReloadTime\":1.2,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":0.34},\"Cigarette\":{\"gunBulletCount\":0,\"attackHurtType\":\"NonLethal\",\"weaponType\":\"Consumable\",\"attackDamage\":0,\"meleeStamina\":0,\"attackKnockback\":0,\"meleeFrameFirst\":0,\"gunBulletAccuracy\":0,\"spriteWalk\":\"sprPlayerCigarette\",\"weaponSpeedWalk\":1,\"gunReloadReserve\":0,\"meleeRange\":0,\"spriteAttack\":\"sprPlayerAttackCigarette\",\"gunReloadType\":\"N/A\",\"meleeFrameLast\":0,\"spriteMirror\":0,\"gunReloadTime\":0,\"weaponAutomatic\":0,\"gunReloadClip\":0,\"gunBulletPenetration\":0,\"attackSpeed\":1.4}}"
    
	//Establish Global Map (includes submaps)
	g.mapWeapons = json_decode(_jsonString);

	//Create Weapon Lists
	g.listWeaponsGun = ds_list_create();
	g.listWeaponsMelee = ds_list_create();

	//Load Into Lists
	var _mapPosition = ds_map_find_first(g.mapWeapons);
	for (var i = 0; i < ds_map_size(g.mapWeapons); i ++)    {
	    var _mapIndex = g.mapWeapons[? _mapPosition];
	    switch (_mapIndex[? "weaponType"])  {
	        case "Gun":
	            ds_list_add(g.listWeaponsGun, _mapPosition);
	            print("Gun added: " + _mapPosition, "DPS: " + string((_mapIndex[? "attackDamage"] / _mapIndex[? "attackSpeed"]) * _mapIndex[? "gunBulletCount"]));
	            break;
	        case "Melee":
	            ds_list_add(g.listWeaponsMelee, _mapPosition);
	            print("Melee added: " + _mapPosition, "DPS: " + string(_mapIndex[? "attackDamage"] / _mapIndex[? "attackSpeed"]));
	            break;
	        default:
	            print("Found Weapon, Not Gun/Melee", _mapPosition);
	            break;
	    }
    
	    _mapPosition = ds_map_find_next(g.mapWeapons, _mapPosition);
	}

	//Create Disallowed List for Mystery Box
	g.listWeaponsMysteryInvalid = ds_list_create();
	ds_list_add(g.listWeaponsMysteryInvalid, "Unarmed");

	//Save File
	if !flagWeb {
	    var _fileAlt = file_text_open_write("Debug\\dataWeaponsAlt.json");
	    file_text_write_string(_fileAlt, json_encode(g.mapWeapons));
	    file_text_close(_fileAlt);
	}



}
