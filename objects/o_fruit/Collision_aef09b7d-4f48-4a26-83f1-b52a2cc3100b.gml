/// @description Player Eats Fruit

audio_play_sound(snd_coin,5, false);
if (global.hp/global.max_hp < 1) {
	if (global.hp + fruit_health >= global.max_hp) {
		global.hp = global.max_hp;
	} else {
	global.hp += fruit_health;
	}
}
instance_destroy();
