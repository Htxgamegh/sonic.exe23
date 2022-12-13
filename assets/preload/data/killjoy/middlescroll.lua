-- This script controls the middle scroll functions
local chad = false;
function onCreate()
	chad = middlescroll;
	if chad then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false);
	end
end

function onDestroy()
	if chad then
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
end