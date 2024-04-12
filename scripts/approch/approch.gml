// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function approch(_current_value,_target_value, _variation){
	if _current_value < _target_value{
		_current_value += _variation
		_current_value = min(_current_value, _target_value)
		
	}else if _current_value >= _target_value{
		_current_value -= _variation
		_current_value = max(_current_value, _target_value)
	}
	
	return _current_value
}