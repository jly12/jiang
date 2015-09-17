-- print("test")
-- a=1
-- print(a)
-- print(b)
-- a=5
-- print(a)
-- a="addf"
-- print(addf)
-- print(a)
-- b=1 c=2    
-- print(b,c)
--[[
print(type(b))   --number
print(type(a))   --string
print(type(print)) --function
print(type(true))  --boolean
print(type(nil))   --nil
print(type(type(X))) --string

print(type(type(print)))
a=print
a("dafsf")
print(a)
print(print)
a="one string"
b=string.gsub(a,"one","another") --替换
print(a,b)
print("10" + 1)
print("10 + 1")
print("10" + "1")
print("-5.3e-10" * "2")
--print("hello" + 1)
print("hello".."world")
print("10"..20)
print(10 ..20)

m=0
for i=1,4 do
	for j=1,4 do
		for k=1,4 do
			if i ~=j and j ~=k and k ~=i then
				m = m+1
				print(i..j..k)
			end
		end
    end
end
print(m)
--[[
print((a and b) or c)
print(b)
print(4 and 5)
print(nil and 13)
print(false and 13)
print(4 or 5)
print(false or 5)
print((1 and 2) or 3)

m ="aa"
print(tonumber(m))

if tonumber(m) then
	print("Success")
else
	print("Fail")
end
--]]

-- a,b,c,d=1,2,3
-- print(a,b,c,d)
-- a,b=b,a
-- print(a,b)

-- for i=1,100,5 do
-- 	print(i)
-- end
-- local m = 1
-- while true do
-- 	m=m+1
-- 	print(m)
-- 	if m==50 then
-- 		local  v = 1
-- 		break
-- 	end
-- end
-- print(m,v)
--[[
function max1( a,b )
	if a > b then
		return a
	else
		return b
	end
end

function max2( a,b )
	if a > b then
		print(a) 
	else
		print(b)
	end
end

print(max1(11,22))
max2(11,22)

function test( ... )
	return 1,2,3
end

a,b,c=test()
print(a,b,c)
a,b,c=10,test()
print(a,b,c)
a,b,c=test(),11,11
print(a,b,c)
a,b,c=test(),22
print(a,b,c)

function A( ... )
	function B( ... )
		print("B called")
	end
	B()
end

A()    --调用A()，才能调用B()
B()

days = {"Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", "Saturday"}
print(days[4])

config = {name="zhangsan",age=21}
print(config.name)
print(config["name"])

config.sex="boy"   --再config中添加sex
--config["sex"]="boy" 

for k,v in pairs(config) do
	print(k,v)
end

for k,v in pairs(days) do
	print(k,v)
end
--]]
arr={}
for var=1,10 do
	table.insert(arr,1,var)
end

for k,v in pairs(arr) do
	print(k,v)
end

print(#arr)             --数组长度
print(table.maxn(arr))


days = {[1]="Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", "Saturday"}
for i,v in ipairs(days) do
	print(i,v)
end

print(#days)