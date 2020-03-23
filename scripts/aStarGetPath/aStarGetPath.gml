/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 335160B6
/// @DnDArgument : "code" "//creates a path from(startX startY) to (endX, endY)$(13_10)//param0 = startX : starting x position$(13_10)//param1 = startY : starting y position$(13_10)//param2 = endX : ending x position$(13_10)//param3 = endY : ending y position$(13_10)$(13_10)//NOTE : Inputs are in terms of room positions.$(13_10)//all other positions will be in  terms of grid.$(13_10)$(13_10)var startRoomX=argument0;$(13_10)var startRoomY=argument1;$(13_10)var endRoomX=argument2;$(13_10)var endRoomY=argument3;$(13_10)$(13_10)$(13_10)//_____PRE-ALGOR______$(13_10)//convert vars into grid$(13_10)startX=startRoomX div obj_Astar.blockSize;$(13_10)startY=startRoomY div obj_Astar.blockSize;$(13_10)endX=endRoomX div obj_Astar.blockSize;  //this is coord of mouse clickX$(13_10)endY=endRoomY div obj_Astar.blockSize;//this is coord of mouse clickY$(13_10)$(13_10)//create datastructures$(13_10)G=ds_map_create();$(13_10)H=ds_map_create();$(13_10)F=ds_priority_create();$(13_10)P=ds_map_create();$(13_10)C=ds_list_create();$(13_10)$(13_10)//init first G value$(13_10)ds_map_add(G, getKey(startX,startY),0); //id, key, value$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//_____ALGOR_______$(13_10)searching=true;$(13_10)curX=startX;$(13_10)curY=startY;$(13_10)while(searching) {$(13_10)	processCurrentNode();$(13_10)}$(13_10)$(13_10)var path=-1;$(13_10)if(found) {$(13_10)	path=path_add();$(13_10)	var curNode=getKey(endX,endY);$(13_10)	while(curNode != getKey(startX,startY)) {$(13_10)			path_add_point(path,getKeyX(curNode)*obj_Astar.blockSize,$(13_10)			 getKeyY(curNode)*obj_Astar.blockSize, 100);$(13_10)			curNode=ds_map_find_value(P, curNode);$(13_10)	}$(13_10)	path_add_point(path, startX*obj_Astar.blockSize, startY*obj_Astar.blockSize,100);$(13_10)	path_reverse(path);$(13_10)	path_set_closed(path,false);$(13_10)}$(13_10)$(13_10)//_____POST-ALGOR_____$(13_10)//destroy datastructures$(13_10)ds_map_destroy(G);$(13_10)ds_map_destroy(H);$(13_10)ds_priority_destroy(F);$(13_10)ds_map_destroy(P);$(13_10)ds_list_destroy(C);$(13_10)$(13_10)//returnm our result$(13_10)return path;"
//creates a path from(startX startY) to (endX, endY)
//param0 = startX : starting x position
//param1 = startY : starting y position
//param2 = endX : ending x position
//param3 = endY : ending y position

//NOTE : Inputs are in terms of room positions.
//all other positions will be in  terms of grid.

var startRoomX=argument0;
var startRoomY=argument1;
var endRoomX=argument2;
var endRoomY=argument3;


//_____PRE-ALGOR______
//convert vars into grid
startX=startRoomX div obj_Astar.blockSize;
startY=startRoomY div obj_Astar.blockSize;
endX=endRoomX div obj_Astar.blockSize;  //this is coord of mouse clickX
endY=endRoomY div obj_Astar.blockSize;//this is coord of mouse clickY

//create datastructures
G=ds_map_create();
H=ds_map_create();
F=ds_priority_create();
P=ds_map_create();
C=ds_list_create();

//init first G value
ds_map_add(G, getKey(startX,startY),0); //id, key, value




//_____ALGOR_______
searching=true;
curX=startX;
curY=startY;
while(searching) {
	processCurrentNode();
}

var path=-1;
if(found) {
	path=path_add();
	var curNode=getKey(endX,endY);
	while(curNode != getKey(startX,startY)) {
			path_add_point(path,getKeyX(curNode)*obj_Astar.blockSize,
			 getKeyY(curNode)*obj_Astar.blockSize, 100);
			curNode=ds_map_find_value(P, curNode);
	}
	path_add_point(path, startX*obj_Astar.blockSize, startY*obj_Astar.blockSize,100);
	path_reverse(path);
	path_set_closed(path,false);
}

//_____POST-ALGOR_____
//destroy datastructures
ds_map_destroy(G);
ds_map_destroy(H);
ds_priority_destroy(F);
ds_map_destroy(P);
ds_list_destroy(C);

//returnm our result
return path;