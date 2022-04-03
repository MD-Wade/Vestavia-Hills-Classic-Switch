/// @description grid_to_csv_string( grid, [field delimiter], [string delimiter], [newline] )
/// @param  grid
/// @param  [field delimiter]
/// @param  [string delimiter]
/// @param  [newline] 
function grid_to_csv_string() {
	//  
	//  arg0   ds_grid   The grid holding the data to be formatted/encoded to CSV
	//  arg1   string    The field delimiter used to separate cells (cannot be a decimal point). Defaults to a comma
	//  arg2   string    The string delimiter used to define strings in the CSV file. Defaults to a double-quote
	//  arg3   string    The newline character(s) used to defined a new row. Defaults to the Windows standard (0D,0A)
	//  
	//  returns: A string containing a formatted CSV file, including line breaks
	//  

	var _grid             = undefined;
	var _field_delimiter  = chr(44); //comma
	var _string_delimiter = chr(34); //double-quote
	var _newline          = chr(13) + chr(10); //default Windows (Notepad) newline

	if ( argument_count <= 0 ) and ( argument_count > 4 ) {
	    show_error( "Incorrect number of arguments (" + string( argument_count ) + ")", false );
	    return "";
	}

	if ( argument_count >= 1 ) var _grid             = argument[0];
	if ( argument_count >= 2 ) var _field_delimiter  = argument[1];
	if ( argument_count >= 3 ) var _string_delimiter = argument[2];
	if ( argument_count >= 4 ) var _newline          = argument[3];

	if ( _field_delimiter == chr(46) ) { //decimal point
	    show_error( "Field delimiter cannot be a decimal point!", false );
	    return "";
	}

	var _str = "";
	var _width  = ds_grid_width( _grid );
	var _height = ds_grid_height( _grid );

	for( var _y = 0; _y < _height; _y++ ) {
	    for( var _x = 0; _x < _width; _x++ ) {
        
	        var _value = _grid[# _x, _y ];
	        if ( is_real( _value ) ) {
	            _str += string( _value );
	        } else if ( is_string( _value ) ) {
	            if ( _value != "" ) { //Catch empty strings
	                _str += _string_delimiter + string_replace_all( _value, _string_delimiter, _string_delimiter+_string_delimiter ) + _string_delimiter;
	            }
	        } else {
	            show_debug_message( "ds_grid_to_csv: CAUTION - grid " + string( _grid ) + " value at " + string( _x ) + "," + string( _y ) + " is not a valid datatype!" );
	        }
        
	        if ( _x < _width-1 ) _str += _field_delimiter;
        
	    }
    
	    _str += _newline;
    
	}

	return _str;



}
