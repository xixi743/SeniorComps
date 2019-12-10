/// @description Player Eats Fruit

audio_play_sound(snd_coin,5, false);
global.hp+= fruit_health;
instance_destroy();
