/// @description Initialize

/// CREATE EVENT ///

// This probably isn't necessary, but I'd like *some* randomness to the initial puddle
image_xscale = random_range(0.33, 1.25);
image_yscale = image_xscale;

// Simple, move each blob in a random direction
movDir = random(360);
// The is a drastic range because I'm hoping for those big streaks 
// The low numbers will stay around the puddle, while the high numbers create quick streams
movSpd = random_range(4, 24) * global.gameTimescale;

// I want the blood to start out very fast, but also slow down incredibly fast
// The overall splatter will last 2-8 frames
fric       = random_range(movSpd / 8, movSpd / 2) * global.gameTimescale;

// As the blood spreads, it thins out
// This creates the *points* at the end of each stream
// The blood will spread for 3-10 frames
sizeChange = 0.1 * global.gameTimescale;

