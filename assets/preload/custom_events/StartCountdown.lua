--↓ ↓ ↓ CHANGE THE SPRITE OFFSETS HERE
SpriteX = 300;
SpriteY = 200;
executedAmm = 0;

function onCreate()
   precacheImage('three')
   precacheImage('two')
   precacheImage('one')
   precacheImage('GoFun')

   makeLuaSprite('three', 'three', SpriteX, SpriteY);
   setObjectCamera('three', 'other');
   
   makeLuaSprite('two', 'two', SpriteX, SpriteY);
   setObjectCamera('two', 'other');
   
   makeLuaSprite('one', 'one', SpriteX, SpriteY);
   setObjectCamera('one', 'other');

   makeLuaSprite('GoFun', 'GoFun', SpriteX, SpriteY);
   setObjectCamera('GoFun', 'other');
end

function onEvent(name, value1, value2)
    if name == 'StartCountdown' and executedAmm == 0 then
	executedAmm = (getProperty(executedAmm) + 1);
	
    elseif name == 'StartCountdown' and executedAmm == 1 then
	setProperty('three.alpha', 1);
	executedAmm = (getProperty(executedAmm) + 1);
	addLuaSprite('three', true);
	doTweenAlpha('noThree', 'three', 0, 0.50, "quartOut");
	
	elseif name == 'StartCountdown' and executedAmm == 2 then
	setProperty('two.alpha', 1);
	executedAmm = (getProperty(executedAmm) + 1);
	addLuaSprite('two', true);
	doTweenAlpha('noTwo', 'two', 0, 0.50, "quartOut");
	
	elseif name == 'StartCountdown' and executedAmm == 3 then
	setProperty('one.alpha', 1);
	executedAmm = (getProperty(executedAmm) + 1);
	addLuaSprite('one', true);
	doTweenAlpha('noOne', 'one', 0, 0.50, "quartOut");

	elseif name == 'StartCountdown' and executedAmm == 4 then
	setProperty('GoFun.alpha', 1);
	executedAmm = 0;
	addLuaSprite('GoFun', true);
	doTweenAlpha('noGoFun', 'GoFun', 0, 0.50, "quartOut");
     end
end
	  