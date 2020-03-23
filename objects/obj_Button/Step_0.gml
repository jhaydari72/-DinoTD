/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 091F88C9
/// @DnDArgument : "code" "///@description$(13_10)$(13_10)var _hover = get_hover();$(13_10)var _click = _hover && mouse_check_button_pressed(mb_left);$(13_10)$(13_10)//hover$(13_10)hover = lerp(hover, _hover,0.1);$(13_10)y = lerp(y,ystart - _hover * 8, 0.1);$(13_10)//click$(13_10)if (_click && script >= 0) {$(13_10)	script_execute(script);$(13_10)	$(13_10)	if (number == 1) {$(13_10)		event_user(0);$(13_10)$(13_10)	}else if (number == 2) {$(13_10)		//event_user(1);$(13_10)$(13_10)	} else {$(13_10)		event_user(2);$(13_10)	$(13_10)	}$(13_10)}"
///@description

var _hover = get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

//hover
hover = lerp(hover, _hover,0.1);
y = lerp(y,ystart - _hover * 8, 0.1);
//click
if (_click && script >= 0) {
	script_execute(script);
	
	if (number == 1) {
		event_user(0);

	}else if (number == 2) {
		//event_user(1);

	} else {
		event_user(2);
	
	}
}