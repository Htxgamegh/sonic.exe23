function onEvent(name, value1, value2)
	if name == 'stage test' then
		addLuaScript('stages/'..value1);
		removeLuaScript('stages/'..value2);
		trace("bruh");
	end
end