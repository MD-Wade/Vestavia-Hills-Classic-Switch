/// @description Initialize

/// @description Initialize Controller Applet
global.GP_ID = -1;
var styles = switch_controller_handheld | switch_controller_pro_controller | switch_controller_joycon_dual;
//accept only physically connected joycons and a pro controller.

switch_controller_set_supported_styles( styles );
switch_controller_joycon_set_holdtype(switch_controller_joycon_holdtype_horizontal);

// Ensure that the handheld joycon style requires both joy-cons connected to be active.
switch_controller_set_handheld_activation_mode(switch_controller_handheld_activation_dual);

switch_controller_support_set_defaults();
switch_controller_support_set_singleplayer_only(true);
switch_controller_support_show(); //show the applet

GameInit_Master();

