/// @description GameReturnQuality(index, count);
/// @param index
/// @param  count
function MenuReturnQuality() {

	var _inValue = argument[0];
	var _inCount = argument[1];

	switch (_inCount)   {
	    case 3:
	        switch (_inValue)   {
	            case 0: return "LOW"; break;
	            case 1: return "MEDIUM"; break;
	            case 2: return "HIGH"; break;
	            default: return "ERR"; break;
	        }   break;
	}



}
