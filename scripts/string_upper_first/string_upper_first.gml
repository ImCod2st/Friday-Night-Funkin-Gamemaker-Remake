// make the first letter in a string uppercase
function string_upper_first(string){
	var firstLetter = string_char_at(string, 0);
	var rest = string_copy(string, 2, string_length(string));
	
	return string_upper(firstLetter) + rest;
}