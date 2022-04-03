/// @description PlayerStepUpdateMovementCalculations();
function PlayerStepMovementCalculations() {

	movementMoving = (inputUp or inputLeft or inputDown or inputRight);
	movementDirectionX = sign(inputRight - inputLeft);
	movementDirectionY = sign(inputDown - inputUp);

	var _ratioHealth = min(GameReturnActorStat("Health") / 100, 1);
	var _ratioStamina = min(GameReturnActorStat("Stamina") / 100, 1);

	movementHealthFactor = lerp(0.85, 1.0, _ratioHealth);
	movementStaminaFactor = lerp(0.85, 1.0, _ratioStamina);

	movementFactorTotal = movementHurtFactor * movementStaminaFactor * movementHealthFactor;
	movementSpeedTotal = movementSpeed * movementFactorTotal;



}
