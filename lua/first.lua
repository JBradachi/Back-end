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
local g=3

local function qualquercoisa(c)
    print(c)    
    return c+1
end

print(qualquercoisa(g))


-- coloca uma função em uma variável
local function adder(x)
    return function (y) return x+y end
end

local a1 = adder(2)
local a2 = adder(5)

print(a1, a2)

print(a1(4))
print(adder(2)(4))
print(adder(adder(2)(2))(2))

-- valores sobressalentes são jogados fora
local x, y, z = 1, 2, 3, 4

print(x, y, z)

-- funções em lua podem retornar vários valores
-- se não salvar eles em uma variável, será perdido.

local function bar(a, b, c)
    print(a, b, c)
    return 4, 8, 15, 16, 23, 42
  end

x, y = bar(1, 2, 3)

print(x, y)

-- isso é a mesma coisa
-- Funções são primeira classe, podem ser local/global
local function f(x) return x * x end
local f
f = function (x) return x * x end

-- mas funçoes locais e globais se diferem

------------------
-- TABELAS
------------------

-- acessa como atributo
local f1 = {a=1, b=2}
f1.c = 3
print(f1.a, f1.b, f1.c)

-- acessa como parametro, pode ser de qualquer tipo
local f1 = {["a"]=1, ["b"]=2, [5]=13}
f1["c"] = 3
print(f1["a"], f1["b"], f1[5], f1["c"])

-- não é possível unir acesso de parametro com atributo
-- ou é um ou é outro

-- A one-table-param function call needs no parens:
-- um parametro de função que recebe uma tabela de um  parametro
-- não precisa de parenteses

local function h(x) print(x.key1) end
h{key1 = 'Sonmi~451'}  -- Prints 'Sonmi~451'.

for key, val in pairs(f1) do  -- Table iteration.
  print(key, val)
end

-- lista e array em tabelas:

local lista = {3, 4, 1, 4, 7}
