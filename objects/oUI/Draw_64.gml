/// @desc Draw Text
//global.current_font("pokemon-rs.ttf");	//Problems with this use?
var t = font_add("pokemon-rs.ttf", 30, false, false, 32, 128);

draw_set_font(t);
draw_text_color(50, 50, "The quick, brown fox jumped over the lazy god", c_white, c_white, c_white, c_white, 1);