/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51E4F5CB
/// @DnDArgument : "code" "///@description create UI$(13_10)var _width = 300;$(13_10)var _height = 100;$(13_10)$(13_10)create_button(40,40, _width, _height,"Play", on_click, 1);$(13_10)$(13_10)create_button(40,40+_height+40, _width, _height, "Pause", on_click, 2);$(13_10)$(13_10)create_button(40,40+(_height+40)*2, _width, _height, "Quit", on_click, 3);"
///@description create UI
var _width = 300;
var _height = 100;

create_button(40,40, _width, _height,"Play", on_click, 1);

create_button(40,40+_height+40, _width, _height, "Pause", on_click, 2);

create_button(40,40+(_height+40)*2, _width, _height, "Quit", on_click, 3);