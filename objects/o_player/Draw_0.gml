/// @description Draw the gun
draw_self();
draw_sprite(s_gun, 0, x+20, y+30); // can't write this alone, it will remove the the character sprite
// must draw the sprite after self to place gun over the character