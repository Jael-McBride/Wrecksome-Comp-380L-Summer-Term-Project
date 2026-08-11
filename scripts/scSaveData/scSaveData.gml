global.pinkUnlocked = 0
global.venenoUnlocked = 0
global.oshkoshUnlocked = 0
global.formula1Unlocked = 0
global.gt40Unlocked = 0
global.supraUnlocked = 0
loadData();
function saveData(){
	var _struct =
	{
		pink: global.pinkUnlocked,
		veneno: global.venenoUnlocked,
		oshkosh: global.oshkoshUnlocked,
		formula1: global.formula1Unlocked,
		gt40: global.gt40Unlocked,
		supra: global.supraUnlocked
	};
	
	var _string = json_stringify(_struct);
	
	var _file = file_text_open_write("save.txt");
	
	file_text_write_string(_file, _string);
	
	file_text_close(_file);
}

function loadData(){
	if(file_exists("save.txt")){
		
		var _file = file_text_open_read("save.txt");
		
		var _json = file_text_read_string(_file);
		
		var _struct = json_parse(_json);
		
		global.pinkUnlocked = _struct.pink;
		global.venenoUnlocked = _struct.veneno;
		global.oshkoshUnlocked = _struct.oshkosh;
		global.formula1Unlocked = _struct.formula1;
		global.gt40Unlocked = _struct.gt40;
		global.supraUnlocked = _struct.supra;
		
		
		file_text_close(_file);
	}
}