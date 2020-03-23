/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AFEF20F
/// @DnDArgument : "code" "fieldGenerated = false;$(13_10)$(13_10)blockSize = 128;$(13_10)$(13_10)fieldWidth = ceil(room_width/blockSize);//how many columns$(13_10)fieldHeight = ceil(room_height/blockSize);//how many rows.$(13_10)$(13_10)for(var i = 0; i<fieldWidth;i++) {$(13_10)	for(var j = 0; j<fieldHeight;j++) {$(13_10)			walkable[i,j] = true; //column, row.$(13_10)	}//where is walkable[] var declared?$(13_10)}$(13_10)$(13_10)for (var i = 8; i < 17; i++){$(13_10)	walkable[i,6] = false;	$(13_10)}$(13_10)$(13_10)for (var i = 8; i < 18; i++) {$(13_10)	walkable[i,7] = false;	$(13_10)}$(13_10)/*$(13_10)walkable[7,2] = false;$(13_10)walkable[7,3] = false;$(13_10)walkable[7,5] = false;$(13_10)walkable[7,6] = false;$(13_10)walkable[7,7] = false;$(13_10)*/$(13_10)"
fieldGenerated = false;

blockSize = 128;

fieldWidth = ceil(room_width/blockSize);//how many columns
fieldHeight = ceil(room_height/blockSize);//how many rows.

for(var i = 0; i<fieldWidth;i++) {
	for(var j = 0; j<fieldHeight;j++) {
			walkable[i,j] = true; //column, row.
	}//where is walkable[] var declared?
}

for (var i = 8; i < 17; i++){
	walkable[i,6] = false;	
}

for (var i = 8; i < 18; i++) {
	walkable[i,7] = false;	
}
/*
walkable[7,2] = false;
walkable[7,3] = false;
walkable[7,5] = false;
walkable[7,6] = false;
walkable[7,7] = false;
*/
/**/