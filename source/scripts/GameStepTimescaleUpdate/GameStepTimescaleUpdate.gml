/// @description GameStepTimescaleUpdate();
function GameStepTimescaleUpdate() {

	g.gameTimescaleCigarette = approach(g.gameTimescaleCigarette, g.gameTimescaleCigaretteTarget, 0.01);

	g.gameTimescale = g.gameTimescaleBase * g.gameTimescaleCigarette * g.gameTimescaleMessage * g.gameTimescaleEffect;



}
