// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_upper_first(string){
	var firstLetter = string_char_at(string, 0);
	var rest = string_copy(string, 2, string_length(string));
	
	return string_upper(firstLetter) + rest;
}