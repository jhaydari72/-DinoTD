/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49C1DF80
/// @DnDArgument : "code" "var _mouseX = device_mouse_x_to_gui(0);$(13_10)var _mouseY = device_mouse_y_to_gui(0);$(13_10)$(13_10)return point_in_rectangle(_mouseX, _mouseY, x,y,x+width, y+height);"
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

return point_in_rectangle(_mouseX, _mouseY, x,y,x+width, y+height);