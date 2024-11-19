z=0;

#macro KEY_UP_HOLD keyboard_check(ord("W"))
#macro KEY_DOWN_HOLD keyboard_check(ord("S"))
#macro KEY_RIGHT_HOLD keyboard_check(ord("D"))
#macro KEY_LEFT_HOLD keyboard_check(ord("A"))

#macro KEY_UP_PRESSED keyboard_check_pressed(ord("W"))
#macro KEY_DOWN_PRESSED keyboard_check_pressed(ord("S"))
#macro KEY_RIGHT_PRESSED keyboard_check_pressed(ord("D"))
#macro KEY_LEFT_PRESSED keyboard_check_pressed(ord("A"))

#macro PAD_MOVE max(KEY_UP_HOLD,KEY_DOWN_HOLD,KEY_LEFT_HOLD,KEY_RIGHT_HOLD)

#macro KEY_J_HOLD keyboard_check(ord("J"))
#macro KEY_K_HOLD keyboard_check(ord("K"))
#macro KEY_L_HOLD keyboard_check(ord("L"))
#macro KEY_U_HOLD keyboard_check(ord("U"))
#macro KEY_I_HOLD keyboard_check(ord("I"))
#macro KEY_O_HOLD keyboard_check(ord("O"))

#macro KEY_J_PRESSED keyboard_check_pressed(ord("J"))
#macro KEY_K_PRESSED keyboard_check_pressed(ord("K"))
#macro KEY_L_PRESSED keyboard_check_pressed(ord("L"))
#macro KEY_U_PRESSED keyboard_check_pressed(ord("U"))
#macro KEY_I_PRESSED keyboard_check_pressed(ord("I"))
#macro KEY_O_PRESSED keyboard_check_pressed(ord("O"))

#macro KEY_GAME_RESTART keyboard_check_pressed(ord("R"))
#macro KEY_ROOM_RESTART keyboard_check_pressed(ord("T"))
#macro KEY_GAME_END keyboard_check_pressed(vk_escape)


#macro KEY_ALT keyboard_check(vk_alt)
#macro KEY_ENTER keyboard_check(vk_enter)


