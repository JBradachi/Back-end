-- Primeiro script em lua

--[[ 
    outro tipo de comentário 
--]]

local num = 34
local s = 'isso é uma string não modificável'
local t = "Isso é uma string modificável"
local u = [[ Isso
        è
        uma
        string
        em
        varias
        linhas ]]

while num<50 do
    num = num+1
end

if num > 40 then
    print("over 40")
elseif s ~= 'isso é uma string não modificável' then
    io.write('menor q 40\n')
else
    thisIsGlobal = 5
    local line = io.read()
    print('winter is coming' .. line .. num)
end

foo = variaveldesconhecida

print(foo)

-- or e and são curto circuito

-- isso é semelhante a a?b:c 
local ans = true and 'yes' or 'no'

print(ans)
-- inicio, fim, passo; pode omitir passo (será 1)
for i = 1, 10, 2 do
    print(i)
end


for i = 100, 1, -1 do
    num = num+i
end
print(num)

repeat
    num = num-1
until num <= 0
print(num)