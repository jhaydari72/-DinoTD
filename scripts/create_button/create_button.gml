/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 340771C9
/// @DnDArgument : "code" "///@arg x$(13_10)/// @arg y$(13_10)///@arg width$(13_10)/// @arg height$(13_10)///@arg text$(13_10)///@arg script$(13_10)$(13_10)//arguments$(13_10)var _x = argument[0];$(13_10)var _y = argument[1];$(13_10)var _width = argument[2];$(13_10)var _height = argument[3];$(13_10)var _text = argument[4];$(13_10)var _script = argument[5];$(13_10)var _id = argument[6];$(13_10)//create button$(13_10)var _button = instance_create_layer(_x,_y,"instances", obj_Button);$(13_10)$(13_10)//set values$(13_10)with(_button) {$(13_10)	width = _width;$(13_10)	height = _height;$(13_10)	text = _text;$(13_10)	script = _script;$(13_10)	number = _id;$(13_10)}$(13_10)$(13_10)return _button;$(13_10)"
///@arg x
/// @arg y
///@arg width
/// @arg height
///@arg text
///@arg script

//arguments
var _x = argument[0];
var _y = argument[1];
var _width = argument[2];
var _height = argument[3];
var _text = argument[4];
var _script = argument[5];
var _id = argument[6];
//create button
var _button = instance_create_layer(_x,_y,"instances", obj_Button);

//set values
with(_button) {
	width = _width;
	height = _height;
	text = _text;
	script = _script;
	number = _id;
}

return _button;