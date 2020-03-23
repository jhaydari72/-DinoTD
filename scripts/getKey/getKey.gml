/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D448026
/// @DnDArgument : "code" "//takes in 2 numbers and returns a single number to represent the key$(13_10)//param0 : x, grid cell x$(13_10)//param1 : y, grid cell y$(13_10)//returns key$(13_10)$(13_10)var X = argument0;$(13_10)var Y = argument1;$(13_10)$(13_10)return Y * obj_Astar.fieldWidth+X;//why +x?$(13_10)"
//takes in 2 numbers and returns a single number to represent the key
//param0 : x, grid cell x
//param1 : y, grid cell y
//returns key

var X = argument0;
var Y = argument1;

return Y * obj_Astar.fieldWidth+X;//why +x?