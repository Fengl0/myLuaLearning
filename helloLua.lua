-- local breakInfoFun,xpcallFun = require("LuaDebug")("localhost", 7003)
-- --3.x
-- --1.断点定时器添加
-- cc.Director:getInstance():getScheduler():scheduleScriptFunc(breakInfoFun, 0.3, false)
-- --2.程序异常监听
-- function G__TRACKBACK(errorMessage)
-- debugXpCall();
-- print("----------------------------------------")
-- local msg = debug.traceback(errorMessage, 3)
-- print(msg)
-- print("----------------------------------------")
-- end
-- local status, msg = xpcall(main, G__TRACKBACK)


-- print("Hello World")

-- name = 'Xiangzq'
-- #为一元运算符，取字符串长度
-- io.write("Size of string: ", #name, "\n")

-- name1 = 6524

-- io.write("My id is: ", name1, "\n")

-------------------------------------------------------------
-- -- 变量类型
-- io.write("Hello world,from", _VERSION, "\n") -- 版本

-- --[[my first program in Lua --]]

-- global myID = 2333333 --全局变量，默认全局
-- d,f = 5,10
-- d,f= 5 --f默认为nil

-- local age = 18 --局部变量
-- local d,f = 5,10

-- type variable_list = Value_list --表字段

-------------------------------------------------------------
-- -- 变量定义:
-- local a,b
-- -- 初始化
-- a = 10
-- b = 20
-- print("value of a:", a)
-- print("value of b:", b)
-- -- 交换变量的值
-- a,b = b,a --???神奇的赋值运算eg a,b = 22,33
-- print("value of a:", a)
-- print("value of b:", b)
-- f = 70.0/3.0
-- print("value of f:", f)

-------------------------------------------------------------
-- -- 数据类型
-- print(type("What is my type?"))
-- t = 10
-- print(type(5.8*t))
-- print(type(true)) --空字符串检查都为真
-- print(type(print))
-- print(type(type))
-- print(type(nil))
-- print(type(ABC)) --ABC为变量名，未赋值默认为nil
-- print(type(type(ABC))) --type的返回值为string类型的变量类型

-------------------------------------------------------------
-- -- 算数去处算
-- print(10 == 10)
-- print(10 ~= 10)
-- print(10 ~= 11)
-- -- >, <, >=, <=
-- print("\n")

-- -- 逻辑运算
-- a,b,c = 1,2,0
-- print(a and b)
-- print(a and c)
-- print(a or b)
-- print(a or c)
-- print(not(a and b))

-------------------------------------------------------------
-- -- 字符串连接操作符
-- A, B = "Hello", "beautiful girl"
-- print(A.." "..B)

-------------------------------------------------------------
-- -- 循环，决策
-- count = 0
-- while(count < 10)
-- do
--     print("Hello JJ!".." "..count)
--     count = count + 1
-- end
-- print("\n")

-- function f(x)
--     print("do function")
--     return x*2
-- end
-- for i = 1,f(5),2 do
--     print(i)
-- end
-- print("\n")

-- a = {"one", "two", "three"}
-- for i,v in ipairs(a) do
--     print(i,v)
-- end
-- print("\n")
-- repeat
--     print("Hello JJ!".." "..count)
--     count = count + 1
-- until(count > 19)
-- print("\n")

-------------------------------------------------------------
-- -- 决策
-- flag = 10;
-- if(flag < 20)
-- then
--     print("flag 小于 20");
-- end
-- print("flag 的值为：", flag);
-- print("\n");

-- if(flag < 20) then
--     print("flag < 20");
-- else
--     print("flag > 20");
-- end
-- print("flag 的值为".." "..flag);
-- print("\n");

-------------------------------------------------------------
-- -- 函数
-- function max(num1, num2)
--     if (num1 > num2) then
--     result = num1;
--     else
--     result = num2;
--     end
--     return result;
-- end
-- print(max(10,11));

-- myprint = function(param)
--     print("这是打印函数-##"..param.."##");
-- end

-- -- 函数作为参数
-- function add(num1,num2,functionPrint)
--     result = num1 + num2;
--     functionPrint(result);
-- end

-- myprint(10);
-- add(2,5,myprint);
-- print("\n");

-- -- 多返回值
-- s,e = string.find("JJWorldGame","World"); -- 返回首尾字符出现位置
-- print(s, e);

-- function maxinum(a)
--     local mi = 1;
--     local m = a[mi];
--     for i,val in ipairs(a) do
--         if val > m then
--             mi = i;
--             m = val;
--         end
--     end
--     return mi, m;
-- end

-- print(maxinum({8,10,23,12,5}));
-- print("\n");

-- -- 可变参数
-- function average(...) -- 使用...表示可变参数
--     local result = 0;
--     local arg = {...}; -- arg为一个表，局部变量
--     for i, v in ipairs(arg) do
--         result = result + v;
--     end
--     -- print("总共传入 " .. #arg .. " 个数");
--     -- return result/#arg;
-- 使用select("#", ...)来获取参数的数量
-- 使用select(n, ...)来获取参数的数量,,,,n为小于...长度的常数
--     print("总共传入 " .. select("#", ...) .. " 个数");
--     return result/select("#",...);
-- end
-- print("平均值为：", average(10,5,3,4,5,6));

-- -- 部分可变参数
-- function fwrite(fmt,...)
--     return io.write(string.format(fmt,...));
-- end
-- fwrite("JJ\n") -- fmt=JJ，没有变长参数
-- fwrite("JJ%s%s", "World", "Game");

-------------------------------------------------------------
-- -- 字符串
-- String1 = "Lua";
-- String2 = 'JJWorld';
-- String3 = [["可以显示双引号，没想到吧"]];
-- print("\"字符串1是\"",String1); -- 转义字符，显示双引号
-- print('字符串2是',String2);
-- print("字符串3是",String3);

-- -- 字符串操作
-- print(string.upper(String1)); -- 全大写
-- print(string.lower(String1)); -- 全小写

-- print(string.gsub("JJWorldGame", "J", "Xi", 1)); -- 替换1个
-- print(string.find("JJWorldGameGame", "ame", 1)); -- 查找？？？索引意义何在？？？
-- io.write(string.find("JJWorldGameGame", "ame", 1));

-- print(string.reverse("JJWorldGame")); -- 反转
-- print(string.format("JJ%s%s", "World", "Game")); -- 类似C中printf

-- print(string.char(97,98,99,100)); -- ASCAII转字符

-- print(string.byte("ABCD",2)); -- 指定第二个字符转换为ASCAII？？为什么编号从1开始？？？
-- print(string.byte("ABCD")); -- 默认第一个转换为ASCAII

-- print(string.len(String1)); -- 计算长度
-- print(string.rep(String1, 3)); -- 重复3次
-- print("JJ".."World".."Game"); -- ..连接字符

-- -- string.gmatch(str, pattern)
-- -- 回一个迭代器函数，每一次调用这个函数，返回一个在字符串 str 找到的下一个符合 pattern 描述的子串。
-- -- 如果参数 pattern 描述的字符串没有找到，迭代函数返回nil。
-- for word in string.gmatch("Hello Lua User", "%a+") do
--     print(word);
-- end
-- 
-- 按条件匹配符合格式的字符串
-- print(string.match("I have 2 questions for you.", "%d+ %a+")); -- 2 questions
-- print(string.format("%d, %q", string.match("I have 2 questions for you.", "(%d+) (%a+)"))); -- 2, "questions"
-- print(string.format("%d, %s", string.match("I have 2 questions for you.", "(%d+) (%a+)"))); -- 2, questions

-- -- 字符串截取
-- print(string.sub("JJWorldGame", 3, 7));
-- print(string.sub("JJWorldGame", -4)); -- 截取后4个
-- print(string.sub("JJWorldGame", -50)); -- 越界返回原字符串

-------------------------------------------------------------

-- age = 20
-- -- canVote = age > 18 and 1 or 2
-- canVote = age > 18 and true or false
-- io.write("can I vote :", tostring(canVote));

-------------------------------------------------------------
-- repeat
--     io.write("Please enter your number:");
--     guess = io.read();
-- until tonumber(guess) == 66;

-------------------------------------------------------------
-- 表table
-- -- 初始化表
-- mytable = {}

-- -- 指定值
-- mytable[1]= "Lua"

-- -- 移除引用
-- mytable = nil
-- -- lua 垃圾回收会释放内存

-- 简单的 table
-- mytable = {}
-- print("mytable 的类型是 ",type(mytable))

-- mytable[1]= "Lua"
-- mytable["wow"] = "修改前"
-- print("mytable 索引为 1 的元素是 ", mytable[1])
-- print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- -- alternatetable和mytable的是指同一个 table//浅拷贝
-- alternatetable = mytable

-- print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
-- print("alternatetable 索引为 wow 的元素是 ", alternatetable["wow"])

-- alternatetable["wow"] = "修改后"
-- print("mytable 索引为 wow 的元素是 ", mytable["wow"])
-- print("alternatetable 索引为 wow 的元素是 ", alternatetable["wow"])

-- -- 释放变量
-- alternatetable = nil
-- print("alternatetable 是 ", alternatetable)

-- -- mytable 仍然可以访问
-- print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- mytable = nil
-- print("mytable 是 ", mytable)

-- fruits = {"banana", "orange", "apple"};
-- -- 返回table链接后的字符串
-- print("链接后的字符串：" .. table.concat(fruits))
-- -- 指定连接字符
-- print("链接后的字符串：" .. table.concat(fruits, ","))
-- -- 指定索引来连接table
-- print("链接后的字符串：" .. table.concat(fruits, ",", 2, 3))

-- fruits = {"banana","orange","apple","grapes"}

-- print("排序前")
-- for k,v in ipairs(fruits) do
--         print(k,v)
-- end

-- table.sort(fruits)
-- print("排序后") -- ipairs只能按照索引升序依次遍历，遇到索引为空则停止
-- for k,v in ipairs(fruits) do
--         print(k,v)
-- end

-- fruits[6] = "watermelon"; -- 注意此时索引5为空值nil，使用pairs可以跳过该值
-- print("排序后pairs")
-- for k,v in pairs(fruits) do
--         print(k,v)
-- end

-- function table_maxn(t)
--     local mn = nil;
--     for k, v in pairs(t) do -- table索引不连续，使用pairs
--         if(mn == nil) then
--             mn = v;
--         end
--         if(mn < v) then
--             mn = v;
--         end
--     end
--     return mn;
-- end

-- tbl = {[1] = 2, [2] = 6, [3] = 34, [26] = 55};
-- print("tbl最大值:", table_maxn(tbl));
-- print("tbl长度：", #tbl); -- 输出为3，实际为4
-- -- print("tbl长度：", table.getn(tbl)); -- 输出为3，实际为4
-- -- 重新定义求table元素个数的函数
-- function table_getlen(t)
--     local len = 0;
--     for k,v in pairs(t) do
--         len = len + 1;
--     end
--     return len;
-- end
-- print("tbl长度：", table_getlen(tbl)); -- 输出为4，实际为4

-- 二维表用for嵌套
-- aTable = {};
-- for i = 1,10 do
--     aTable[i] = i;
-- end

-- for i = 1,10 do
--     io.write(aTable[i]);
-- end
-- io.write("\n");

-- table.insert(aTable,1,0);
-- aTable[1] = 5;
-- for i = 1,10 do
--     io.write(aTable[i]);
-- end
-- io.write("\n");

-- print(table.concat(aTable," "));

-------------------------------------------------------------
-- -- string to table
-- function splitStr(theString)
--     stringTable = {};
--     local i = 1;

--     for word in string.gmatch(theString, "[^%s]+") do
--         stringTable[i] = word;
--         i = i + 1;
--     end

--     return stringTable, i;

-- end

-- splitStrtable, numOfStr = splitStr("JJ World");

-- for j = 1, numOfStr - 1 do
--     print(string.format("%d : %s", j, splitStrtable[j]));
-- end

-------------------------------------------------------------
-- 迭代器
-- 在Lua中我们常常使用函数来描述迭代器，每次调用该函数就返回集合的下一个元素。
-- 无状态迭代器-不保留迭代状态，无额外开销
-- array = {"JJ", "World"}

-- for key,value in ipairs(array) -- 迭代函数ipairs
-- do
--    print(key, value);
-- end
-- --
-- function square(iteratorMaaxCount,currentNumber)
--     if currentNumber < iteratorMaaxCount then
--         currentNumber = currentNumber + 1;
--         return currentNumber, currentNumber * currentNumber;
--     end
-- end

-- for i, n in square,3,0 do
--     print(i, n);
-- end
-- --
-- function iter (a, i)
--     i = i + 1;
--     local v = a[i];
--     if v then
--         return i, v;
--     end
-- end

-- function ipairs(a)
--     return iter, a, 0;
-- end
--

-- -- 多状态迭代器
-- function oterFunc()
--     local i = 0;

--     return function()
--         i = i + 1;
--         return i;
--     end
-- end

-- getI = oterFunc();
-- print(getI()); --1
-- print(getI()); --2
-- print(getI()); --3

-- array = {"JJ", "World"};

-- function elementIteratot(collection)
--     local index = 0;
--     local count = #collection;
--     -- 闭包函数
--     return function()
--         index = index + 1;
--         if index <= count then
--             -- 返回迭代器当前元素
--             return collection[index];
--         end
--     end
-- end

-- for element in elementIteratot(array) do
--     print(element);
-- end
     
-------------------------------------------------------------
-- 模块与包见module.lua与test_module.lua
-------------------------------------------------------------

-- 元表

-- __index方法
--[[Lua 查找一个表元素时的规则，其实就是如下 3 个步骤:
    1.在表中查找，如果找到，返回该元素，找不到则继续
    2.判断该表是否有元表，如果没有元表，返回 nil，有元表则继续。
    3.判断元表有没有 __index 方法，如果 __index 方法为 nil，则返回 nil；
    如果 __index 方法是一个表，则重复 1、2、3；如果 __index 方法是一个函数，则返回该函数的返回值。
]]
-- other = {foo = 3};
-- -- t = setmetatable({},{__index = other})
-- t = setmetatable({}, {__index = other})
-- print(other[foo]);
-- print(t.foo);
-- print(t.ahh); -- 元表可以使用.来访问key

-- mytable = setmetatable({key1 = "value1"}, {
--     __index = function(mytable,key)
--         if key == "key2" then
--             return "metatablevalue";
--         else
--             return nil;
--         end
--     end
-- })

-- print(mytable.key1, mytable.key2, mytable.key3);

-- __newindex方法
--[[对新索引键（newkey）赋值时（mytable.newkey = "新值2"），会调用元方法，而不进行赋值。
    而如果对已存在的索引键（key1），则会进行赋值，而不调用元方法 __newindex]]
-- mymetatable = {};
-- mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable });

-- print(mytable.key1, mymetatable.key1);

-- mytable.newkey = "新值2";
-- print(mytable.newkey, mymetatable.newkey);

-- mytable.key1 = "新值1";
-- print(mytable.key1, mymetatable.key1);

-- mytable = setmetatable({key1 = "value1"}, {
--     __newindex = function(mytable, key, value)
--                   rawset(mytable, key, "\""..value.."\"")
  
--     end
-- })

-- mytable.key1 = "new value"
-- mytable.key2 = 4
-- mytable.key3 = 6
-- mytable.key4 = 8
  
-- print(mytable.key1.."\n", mytable.key2, mytable.key3, mytable.key4)


-- 计算表中最大值，table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中最大[[[[键值]]]]函数 table_maxn，即计算表的元素个数
-- function table_maxn(t)
--     local mn = 0
--     for k, v in pairs(t) do
--         if mn < k then
--             mn = k
--         end
--     end
--     return mn
-- end
-- -- 两表相加操作
-- mytable = setmetatable({ 1, 2, 3 }, {
--     __add = function(mytable, newtable)
--       for i = 1, table_maxn(newtable) do
--         table.insert(mytable, table_maxn(mytable)+1,newtable[i])
--       end
--       return mytable
--     end
-- })
  
-- secondtable = {4,5,6}
  
-- mytable = mytable + secondtable
-- for k,v in ipairs(mytable) do
--     print(k,v)
-- end

-- 定义元方法__call -- 求和方法
-- mytable = setmetatable({10}, {
--     __call = function(mytable, newtable)
--         sum = 0;
--         for i = 1, table_maxn(mytable) do -- 先计算mytable中的值的和
--             sum = sum + mytable[i];
--         end
--         for i = 1, table_maxn(newtable) do -- 再计算newtable中的值的和
--             sum = sum + newtable[i];
--         end
--         return sum;
--     end
-- })
-- newtable = {10,20,30};
-- print(mytable(newtable));

-- mytable = setmetatable({10,20,30},{
--     __tostring = function(mytable)
--         sum = 0;
--         for k,v in pairs(mytable) do
--             sum = sum + v;
--         end
--         return "表所有元素的和为:" .. sum;
--     end
-- })
-- print(mytable);

-------------------------------------------------------------
-- 协程
-- co = coroutine.create( -- 返回 coroutine
--     function(i)
--         print(i);
--     end
-- )

-- coroutine.resume(co, 1); -- 1 -- 启动coroutine
-- print(coroutine.status(co)) -- dead

-- print("----------")

-- co = coroutine.wrap( -- 返回一个函数
--     function(i)
--         print(i);
--     end
-- )

-- co(1); -- 调用函数

-- print("----------")

-- co2 = coroutine.create(
--     function()
--         for i = 1, 10 do 
--             print(i);
--             if i == 3 then
--                 print(coroutine.status(co2)); -- running
--                 print(coroutine.running()); -- thread:xxxxxxx
--             end
--             coroutine.yield(); -- 执行一次挂起一次
--         end
--     end
-- )

-- coroutine.resume(co2); -- 1
-- coroutine.resume(co2); -- 2
-- coroutine.resume(co2); -- 3

-- print(coroutine.status(co2)) -- suspended  ---dead，suspended，running三种
-- print(coroutine.running()) 

-- print("----------")
 
-- function foo (a)
--     print("foo 函数输出", a)
--     return coroutine.yield(2 * a) -- 返回  2*a 的值
-- end
 
-- co = coroutine.create(
--     function (a , b)
--         print("第一次协同程序执行输出", a, b) -- co-body 1 10
--         local r = foo(a + 1)
        
--         print("第二次协同程序执行输出", r)
--         local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入
        
--         print("第三次协同程序执行输出", r, s)
--         return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
--     end
-- )

-- print("main", coroutine.resume(co, 1, 10)) -- true, 4 --- 调用resume，将协同程序唤醒,resume操作成功返回true，否则返回false；
-- print("--分割线----")
-- print("main", coroutine.resume(co, "r")) -- true 11 -9
-- print("---分割线---")
-- print("main", coroutine.resume(co, "x", "y")) -- true 10 end
-- print("---分割线---")
-- print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
-- print("---分割线---")

-- 生产者消费者问题
-- local newProductor

-- function productor()
--     local i = 0;
--     while true do
--         i = i + 1;
--         send(i);
--     end
-- end

-- function consumer()
--     while true do
--         local i = receive();
--         print(i);
--     end
-- end

-- function send(x)
--     coroutine.yield(x);
-- end

-- function receive()
--     local status, value = coroutine.resume(newProductor);
--     return value;
-- end

-- newProductor = coroutine.create(productor);
-- consumer();

-------------------------------------------------------------

-- 文件读写

-- -- 以只读方式打开文件
-- file = io.open("test.lua", "r")
-- -- 设置默认输入文件为 test.lua
-- io.input(file)
-- -- 输出文件第一行
-- print(io.read())
-- -- 关闭打开的文件
-- io.close(file)
-- -- 以附加的方式打开只写文件
-- file = io.open("test.lua", "a")
-- -- 设置默认输出文件为 test.lua
-- io.output(file)
-- -- 在文件最后一行添加 Lua 注释
-- io.write("--  test.lua 文件末尾注释")
-- -- 关闭打开的文件
-- io.close(file)

----- 
-- -- 以只读方式打开文件
-- file = io.open("test.lua", "r")
-- -- 输出文件第一行
-- print(file:read())

-- -- 按行打印文件
-- for line in file:lines() do
--     print(line)
-- end

-- -- 关闭打开的文件
-- file:close()
-- -- 以附加的方式打开只写文件
-- file = io.open("test.lua", "a")
-- -- 在文件最后一行添加 Lua 注释
-- file:write("\n-- test.lua 文件末尾注释")
-- -- 关闭打开的文件
-- file:close()

-- -- 以只读方式打开文件
-- file = io.open("test.lua", "r")
-- file:seek("end", -25)
-- print(file:read("*a"))
-- -- 关闭打开的文件
-- file:close()

-------------------------------------------------------------

-- 错误处理
-- function add(a, b)
--     assert(type(a) == "number", "a不是一个可加数字")
--     -- assert(type(b) == "number", "b不是一个可加数字")
    
--     if(type(b) ~= "number") then
--         error("b不是一个可加数字")
--     end

--     return a + b
-- end

-- print(add(10))

-- pcall, xpcall,debug
-- print(pcall(function(i) print(i) end, 233))
-- print(pcall(function(i) print(i) error('error..') end, 33))

-- -- 提供一个Lua提示符，让用户来检查错误的原因
-- -- print(xpcall(function(i) print(i) error('error..') end, function() print(debug.debug()) end, 33))
-- 根据调用桟来构建一个扩展的错误消息
-- print(xpcall(function(i) print(i) error('error..') end, function() print(debug.traceback()) end, 33))

-- -- eg:
-- function myfunction ()
--     n = n/nil
--  end
 
--  function myerrorhandler( err )
--     print( "ERROR:", err )
--  end
 
--  status = xpcall( myfunction, myerrorhandler )
--  print( status)

-- -- eg:
-- function newCounter ()
--     local n = 0
--     local k = 0
--     return function () -- 多状态迭代器，有记录
--       k = n
--       n = n + 1
--       return n
--       end
--   end
  
--   counter = newCounter ()
--   print(counter())
--   print(counter())
  
--   local i = 1
  
--   repeat
--     name, val = debug.getupvalue(counter, i) -- 返回第一个变量的名称和值
--     if name then
--       print ("index", i, name, "=", val)
--           if(name == "n") then
--                   debug.setupvalue (counter,2,10) -- 将第二个变量的值设为10
--           end
--       i = i + 1
--     end -- if
--   until not name -- name == nil
  
--   print(counter())

-------------------------------------------------------------

-- -- 垃圾回收
-- mytable = {"apple", "orange", "banana"}
-- print(collectgarbage("count"))
-- mytable = nil
-- print(collectgarbage("count")) -- 置空但并未回收，仍为原大小
-- print(collectgarbage("collect")) -- 进行一次完整的回收
-- print(collectgarbage("count")) -- 回收后大小减小

-------------------------------------------------------------

-- 面向对象 --

-- -- 元类
-- Rectangle = {area = 0, length = 0, breadth = 0}

-- -- 派生类的方法new
-- function Rectangle:new(o, length, breadth)
--     o = o or {}
--     setmetatable(o, self) -- 元表中有原来的三个属性
--     self.__index = self -- 查找不到的属性可以去原来的定义中找eg：area
--     self.length = length or 0
--     self.breadth = breadth or 0
--     self.area = length * breadth
--     return o
-- end

-- -- 派生类的方法printArea
-- function Rectangle:printArea()
--     print("矩形的面积为：" .. self.area)
-- end

-- r = Rectangle:new(nil, 10, 20)

-- print(r.length) -- 使用.访问类的属性
-- r:printArea() -- 使用:来访问类的成员函数

-- -- 元类
-- Square = {area = 0}
-- -- 派生类的方法new
-- function Square:new(o, side)
--     o = o or {}
--     setmetatable(o, self)
--     self.__index = self
--     self.side = side or 0
--     self.area = side * side
--     return o
-- end

-- function Square:printArea()
--     print("正方形的面积为:" .. self.area)
-- end

-- s = Square:new(nil, 5)

-- print(s.side)

-- s:printArea()

-- Lua继承

-- Meta class
Shape = {area = 0}
-- 基类方法new
function Shape:new(o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self         -- 
    side = side or 0            -- 注意这里没有加self.
    self.area = side * side
    return o
end
-- 基类方法printArea
function Shape:printArea()
    -- 使用':'创建方法时，参数列表隐藏了self（类似于C++ this指针）
    print("面积为：" .. self.area)
end

Square = Shape:new()

-- Derived class method new
function Square:new(o, side)
    o = o or Shape:new(o, side)
    setmetatable(o, self)
    self.__index = self
    return o
end

sss = Square:new(nil, 3)
sss:printArea()                 -- 调用基类打印函数

-- 重写基类函数(多态)
function Square:printArea()
    print("正方形面积为：" .. self.area)
end

sss:printArea()                 -- 调用重写后的打印函数




