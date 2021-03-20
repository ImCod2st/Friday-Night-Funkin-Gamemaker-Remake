// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dialog(){
	// open the file
	var dialogueFile = global.songName + "\\dialogue.txt";
	if (global.useProgramDir) dialogueFile = working_directory + "\\Songs\\" + dialogueFile;
	var file = file_text_open_read(dialogueFile);
	
	// loop through the dialog
	var num = 0;
	while (!file_text_eof(file)) {
			var curDialog = file_text_readln(file);
			
			var enemyLastPos = string_last_pos(":", curDialog);
			var enemy = string_copy(curDialog, 0, enemyLastPos);
			var text = string_copy(curDialog, enemyLastPos + 1, string_length(curDialog));
			
			dialog[num] = text;
			dialogChar[num++] = enemy;
	}
	
	// done
	file_text_close(file);
}

function get_portraits(_char) {
	// return the image index of sDialogPortrait
	switch (_char) {
		case ":bfpixel:":
			return 0;
			break;
		case ":senpai:":
			return 1;
			break;
		case ":senpai2:":
			return 2;
			break;
		case ":spirit:":
			return 3;
			break;
		default:
			return 0;
			break;
	}
}