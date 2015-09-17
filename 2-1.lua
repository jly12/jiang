-- function count( ... )   --闭合函数
-- 	local i = 1
-- 	return function ( ... )		
-- 		i=i+1
-- 		return i;
-- 	end
-- end

-- local  fun = count()
-- print(fun())
-- print(fun())
-- print(fun())


-- function count()
--   return function()
--        local i = 999;
--             i = i + 1;
--             return i;
--     end
-- end

-- local func = count(); 
-- print(func()); 
-- print(func()); 
-- print(func());

-- local eat;      --非全局函数
-- local drink;
-- local tea ;
-- eat = function ()
--     print("eat");
--     return drink();
-- end
-- drink = function ()
--     print("drink");
--     return tea()
-- end
-- tea = function ( )
-- 	print("tea")
-- end

-- eat()

-- local drink 
-- eat = function ()
--     print("eat");
--     return drink();   --尾调用
-- end
-- drink = function ()
--     return 11
-- end

-- for i=1,10000 do
-- 	eat()
-- end


function dieDaiQi(t)
    local i = 0;
    return function()
        i = i + 1;
        return t[i];
    end
end 
local t = {"a","b","c","d"}
    
local iter = dieDaiQi(t);
    while true do
        local value = iter();
        if value == nil then
         break; 
    end
    print(value);
end

for value in dieDaiQi(t) do
	print(value)
end

function dieDaiQi(t)  --返回两个值的迭代器
	local i = 0;
    return function()
        i = i + 1;
        if i > #t then
            return nil;
        end
        return i, t[i];
    end 
end

local t = {"fdsd", "445", "9999"}
 for k, v in dieDaiQi(t) do
       print(k .. "," .. v)
end

for k,v in pairs(t) do
    print(k,v)
end

for i,v in ipairs(t) do
    print(i,v)
end
