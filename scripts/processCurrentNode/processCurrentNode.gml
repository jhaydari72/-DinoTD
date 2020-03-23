/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CC63269
/// @DnDArgument : "code" "//runs Astar process on current node$(13_10)$(13_10)//add to closed list$(13_10)ds_list_add(C,getKey(curX,curY));//C is a list$(13_10)//ex : 65$(13_10)//analyze adjacent blocks/grid locations$(13_10)var distFromStartToCurrent = ds_map_find_value(G, getKey(curX,curY)); //id of map, key value = 0$(13_10)//returns undefined if key does not exist.$(13_10)$(13_10)//G is init with 0, but where are other G values entered?$(13_10)for (var i = max(0,curX-1); i<=min(obj_Astar.fieldWidth-1, curX+1); i++) $(13_10){//ex : i < 2$(13_10)	//show_debug_message("reached here!");$(13_10)	for (var j=max(0,curY-1); j<min(obj_Astar.fieldHeight-1,curY+2); j++) $(13_10)	{//ex : j < 3$(13_10)		if(i==curX && j==curY)$(13_10)			continue;$(13_10)		//show_debug_message("reached here!!!");$(13_10)		var closed=ds_list_find_index(C,getKey(i,j)) != -1; // ex : key = 65. freturns -1 if key not found.$(13_10)		var diagonal = ((i+j)%2 == (curX+curY)%2);//diagonal if both even or odd.$(13_10)		var canWalk = false;$(13_10)		var distFromCurrentToIJ = 0;$(13_10)		if (diagonal) $(13_10)		{$(13_10)			canWalk = obj_Astar.walkable[i,j] &&$(13_10)					obj_Astar.walkable[curX,j] &&$(13_10)					obj_Astar.walkable[i,curY];$(13_10)					distFromCurrentToIJ = 1.414;$(13_10)					//show_debug_message("reached here!");$(13_10)		} //end if$(13_10)		else$(13_10)		{$(13_10)			canWalk = obj_Astar.walkable[i,j];$(13_10)			distFromCurrentToIJ = 1;$(13_10)			//show_debug_message("reached here no diagonal");$(13_10)		} //end else$(13_10)			if (!closed && canWalk) {$(13_10)				//calculated G,H and F$(13_10)					var tempG = distFromStartToCurrent + distFromCurrentToIJ;$(13_10)					var tempH = abs(i-endX) + abs(j-endY);//manhattan distance to end$(13_10)					//note : you could also use point_distance(i,j,endX,endY);$(13_10)					var tempF = tempG + tempH;$(13_10)					//update if necessary$(13_10)					var processed = ds_map_exists(G, getKey(i,j));$(13_10)					//show_debug_message("reached here!");$(13_10)					//getting here!!!$(13_10)						if(processed) {$(13_10)							//show_debug_message("reached here!");$(13_10)							var lowerG = ds_map_find_value(G,getKey(i,j)) < tempG; $(13_10)							//show_debug_message(lowerG); $(13_10)							$(13_10)								if(lowerG) {$(13_10)									ds_map_replace(G,getKey(i,j),tempG);$(13_10)									ds_map_replace(H,getKey(i,j),tempH);$(13_10)									ds_priority_change_priority(F,getKey(i,j),tempF);$(13_10)									ds_map_replace(P,getKey(i,j),getKey(curX,curY));$(13_10)									//show_debug_message("reached here!");$(13_10)								} $(13_10)						}//end if$(13_10)							else { //this is where add key/create G,H,F,P!!!!$(13_10)								ds_map_add(G,getKey(i,j),tempG);$(13_10)								ds_map_add(H,getKey(i,j),tempH);$(13_10)								ds_priority_add(F,getKey(i,j),tempF);$(13_10)								ds_map_add(P,getKey(i,j),getKey(curX,curY));$(13_10)								//show_debug_message("reached create values!");$(13_10)							}$(13_10)			} // end if $(13_10)	} //end 2nd for loop$(13_10)} //end 1st for loop$(13_10)//find best option$(13_10)var minF =-1;$(13_10)var empty = ds_priority_empty(F);$(13_10)if (!empty) $(13_10)	minF = ds_priority_delete_min(F);$(13_10)//decide what to do$(13_10)if (minF == -1) {$(13_10)	searching = false;$(13_10)	found = false;$(13_10)} else {$(13_10)	curX = getKeyX(minF);$(13_10)	curY = getKeyY(minF);$(13_10)}$(13_10)//check whether we're at the end$(13_10)if (curX == endX && curY == endY) {$(13_10)	searching = false;$(13_10)	found = true;$(13_10)}$(13_10)$(13_10)"
//runs Astar process on current node

//add to closed list
ds_list_add(C,getKey(curX,curY));//C is a list
//ex : 65
//analyze adjacent blocks/grid locations
var distFromStartToCurrent = ds_map_find_value(G, getKey(curX,curY)); //id of map, key value = 0
//returns undefined if key does not exist.

//G is init with 0, but where are other G values entered?
for (var i = max(0,curX-1); i<=min(obj_Astar.fieldWidth-1, curX+1); i++) 
{//ex : i < 2
	//show_debug_message("reached here!");
	for (var j=max(0,curY-1); j<min(obj_Astar.fieldHeight-1,curY+2); j++) 
	{//ex : j < 3
		if(i==curX && j==curY)
			continue;
		//show_debug_message("reached here!!!");
		var closed=ds_list_find_index(C,getKey(i,j)) != -1; // ex : key = 65. freturns -1 if key not found.
		var diagonal = ((i+j)%2 == (curX+curY)%2);//diagonal if both even or odd.
		var canWalk = false;
		var distFromCurrentToIJ = 0;
		if (diagonal) 
		{
			canWalk = obj_Astar.walkable[i,j] &&
					obj_Astar.walkable[curX,j] &&
					obj_Astar.walkable[i,curY];
					distFromCurrentToIJ = 1.414;
					//show_debug_message("reached here!");
		} //end if
		else
		{
			canWalk = obj_Astar.walkable[i,j];
			distFromCurrentToIJ = 1;
			//show_debug_message("reached here no diagonal");
		} //end else
			if (!closed && canWalk) {
				//calculated G,H and F
					var tempG = distFromStartToCurrent + distFromCurrentToIJ;
					var tempH = abs(i-endX) + abs(j-endY);//manhattan distance to end
					//note : you could also use point_distance(i,j,endX,endY);
					var tempF = tempG + tempH;
					//update if necessary
					var processed = ds_map_exists(G, getKey(i,j));
					//show_debug_message("reached here!");
					//getting here!!!
						if(processed) {
							//show_debug_message("reached here!");
							var lowerG = ds_map_find_value(G,getKey(i,j)) < tempG; 
							//show_debug_message(lowerG); 
							
								if(lowerG) {
									ds_map_replace(G,getKey(i,j),tempG);
									ds_map_replace(H,getKey(i,j),tempH);
									ds_priority_change_priority(F,getKey(i,j),tempF);
									ds_map_replace(P,getKey(i,j),getKey(curX,curY));
									//show_debug_message("reached here!");
								} 
						}//end if
							else { //this is where add key/create G,H,F,P!!!!
								ds_map_add(G,getKey(i,j),tempG);
								ds_map_add(H,getKey(i,j),tempH);
								ds_priority_add(F,getKey(i,j),tempF);
								ds_map_add(P,getKey(i,j),getKey(curX,curY));
								//show_debug_message("reached create values!");
							}
			} // end if 
	} //end 2nd for loop
} //end 1st for loop
//find best option
var minF =-1;
var empty = ds_priority_empty(F);
if (!empty) 
	minF = ds_priority_delete_min(F);
//decide what to do
if (minF == -1) {
	searching = false;
	found = false;
} else {
	curX = getKeyX(minF);
	curY = getKeyY(minF);
}
//check whether we're at the end
if (curX == endX && curY == endY) {
	searching = false;
	found = true;
}