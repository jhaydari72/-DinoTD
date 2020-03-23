/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B1B2982
/// @DnDArgument : "code" "$(13_10)var camX = camera_get_view_x(camera);$(13_10)var camY = camera_get_view_y(camera);$(13_10)var camW = camera_get_view_width(camera);$(13_10)var camH = camera_get_view_height(camera);$(13_10)$(13_10)var wheel = mouse_wheel_down() - mouse_wheel_up();$(13_10)$(13_10)$(13_10)if (wheel != 0) {$(13_10)	wheel *= 0.1;$(13_10)	$(13_10)	if (wheel > 0)$(13_10)		counter++;$(13_10)	else$(13_10)		counter--;$(13_10)		$(13_10)	if (counter < 12 && counter > -12)$(13_10)	{$(13_10)		var addW = camW * wheel;$(13_10)		var addH = camH * wheel;$(13_10)	$(13_10)		camW += addW;$(13_10)		camH += addH;$(13_10)$(13_10)		camX -= addW / 2;$(13_10)		camY -= addH / 2;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)camera_set_view_pos(camera, camX, camY);$(13_10)camera_set_view_size(camera, camW, camH);$(13_10)$(13_10)x = lerp(x, mouse_x, 0.2);$(13_10)y = lerp(y, mouse_y, 0.2);$(13_10)$(13_10)$(13_10)$(13_10)"

var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

var wheel = mouse_wheel_down() - mouse_wheel_up();


if (wheel != 0) {
	wheel *= 0.1;
	
	if (wheel > 0)
		counter++;
	else
		counter--;
		
	if (counter < 12 && counter > -12)
	{
		var addW = camW * wheel;
		var addH = camH * wheel;
	
		camW += addW;
		camH += addH;

		camX -= addW / 2;
		camY -= addH / 2;
	}
}


camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH);

x = lerp(x, mouse_x, 0.2);
y = lerp(y, mouse_y, 0.2);