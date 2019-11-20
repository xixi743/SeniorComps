/// @description Insert description here

width = room_width div CELL_WIDTH;
height = room_height div CELL_HEIGHT;

grid = ds_grid_create(width, height);
ds_grid_set_region(grid, 0, 0, width, height, EMPTY);

// Generate the level
instance_create_layer (x+400, y, "Instances", o_solid);
