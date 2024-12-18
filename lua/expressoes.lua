-- Expressões em lua

function PrintVetor(x)
    for  i=1 , #x do
        print(x[i])
    end
end

local function literais()
    -- Todos os tipos de dados 
    -- numericos em lua são double
    local inteiro = 5
    local real = 5.3
    local hexa = 0xff
    local cientifico = 314.16e-2
    local cientifico2 = 0.31416E1
    local string = "exemplo"
    local booleano = true
    local nulo = nil
end

local function agregacoes()
    -- Para agreagação lua usa
    -- o conceito de tabelas
    local varAgr = {1, 3-10, 3, 4, "pato"}
    PrintVetor(varAgr)
end

local function aritmeticas()
    -- Lua oferece um suporte basico
    -- e genérico para expressões
    -- aritmeticas
    local a = 2
    local b = 3
    local c = {}
    c[1] = a + b
    c[2] = a - b
    c[3] = a * b
    c[4] = a / b
    c[4] = a // b
    c[5] = a % b
    c[6] = a ^ b
    c[7] = a ^ (-b)
end

local function relacionais()
    -- Lua oferece um suporte basico
    -- e genérico para expressões
    -- relacionais
    local c = {}
    c[1] = 2 == 3
    c[2] = 2 ~= 3
    c[3] = 2 < 3
    c[4] = 2 > 3
    c[5] = 2 <= 3
    c[6] = 2 >= 3
end

local function booleanos()
    -- Os operadores lógicos em Lua 
    -- são and, or, e not
    local c = {}
    c[1] = 10 and 20 -- 20
    c[2] = 10 or 20 -- 10
    c[3] = nil or "a" -- "a"
    c[4] = nil and 10 -- nil
    c[5] = not false and nil -- nil
    c[6] = 7<10 and 4<5 -- true
end

local function binarios()
    local c = {}
    c[1] = 1 & 0  --  0
    c[2] = 1 | 0  --  1
    c[3] = 1 ~ 0  --  1
    c[4] = 1 >> 2 --  0
    c[5] = 1 << 2 --  4
    c[6] = ~0     -- -1
end

local function condicionais()
    -- Similar ao operador ternário
    -- a  ?  b  : c
    -- a and b or c
    local c = true and 'yes' or 'no'
end


local function dobra(numero)
    return numero*2
end

local function soma(x)
    return function (y) return x + y end
    
end

local a1 = soma(2)
-- print(a1) -- function: 0x63308bf8bec0 
-- print(a1(dobra(2))) -- 6

local function ref()
    local c = {}
    c.a = 5
    c[3] = 4
    print(c.a, c[3])
end

local vAfetada = 0
local function ec(x)
    x = x + 1
    vAfetada = 32
    return 42
end
ec(vAfetada)
print(vAfetada) -- 32

local function variavel(...)
    local c = ...
    local d = {...}
    local numparam = #...
    print(c, d[2], numparam)
end

local string = {}

function string.__add(x, y)
    return x[1] .. " " ..  y[1]
end

local function soma2(x, y)
    return x+y
end

local s1 = {"teste"}
local s2 = {"test"}

setmetatable(s1, string)
setmetatable(s2, string)

print(soma2(2, 4))
print(soma2(s1, s2))

-- Classes em Lua:

Cachorro = {}

function Cachorro:new()
    -- atributos
    local newObj = {sound = 'woof'}
    self.__index = self
    return setmetatable(newObj, self)
end

function Cachorro:makeSound()
    print(self.sound)
end

local srDog = Cachorro:new()
srDog:makeSound()

-- Herança em lua 

Pintcher = Cachorro:new()

function Pintcher:new()
    local newObj = {calda = "Pequena"}
    self.__index = self
    return setmetatable(newObj, self)
end

function Pintcher:makeSound()
    print("grrrr " .. self.sound .. " grrrr" .. "\nBalança calda " .. self.calda)
end

local p = Pintcher:new()

p:makeSound()