// yeah i didnt make this code, this shit is extremely smart
// found at https://forum.yoyogames.com/index.php?threads/is-there-a-way-to-draw-a-partial-circle-like-a-pie-slice.39662/
// posted by the user Galax (but i am not sure if he created this or not, if you know who did please contact me so i can give proper credit here)
function draw_pie(__x ,__y ,__value, __max, __colour, __radius, __transparency){
	/// draw_pie(_x ,_y ,_value, _max, _colour, _radius, _transparency)

	if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
    
	    val = (argument2/argument3) * numberofsections 
    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        draw_set_colour(argument4);
	        draw_set_alpha(argument6);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(argument0, argument1);
        
	        for(i=0; i<=val; i++) {
	            len = (i*sizeofsection)+90; // the 90 here is the starting angle
	            tx = lengthdir_x(argument5, len);
	            ty = lengthdir_y(argument5, len);
	            draw_vertex(argument0+tx, argument1+ty);
	        }
	        draw_primitive_end();
        
	    }
	    draw_set_alpha(1);
	}
}