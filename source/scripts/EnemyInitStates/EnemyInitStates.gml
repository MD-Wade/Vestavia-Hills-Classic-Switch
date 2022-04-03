/// @description EnemyInitStates();
function EnemyInitStates() {

	enum ESTATES    {
	    Spawn, Idle, Walk, enterWindow, knockedOut, Dead, Attack, Knockback
	}

	stateCurrent = ESTATES.Spawn;
	stateLast = -1;



}
