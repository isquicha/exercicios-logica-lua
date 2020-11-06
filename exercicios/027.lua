--[[
Faça um Programa que leia três números e mostre-os em ordem decrescente.
--]]
print("Digite um numero: ") 
numero1 = tonumber(io.read())
print("Digite outro numero: ")
numero2 = tonumber(io.read())
print("Digite mais um numero: ")
numero3 = tonumber(io.read())
if numero1 > numero2 and numero2 > numero3 then
    print(numero1 .. " " .. numero2 .. " " .. numero3)
elseif numero1 > numero3 and numero3 > numero2 then
    print(numero1 .. " " .. numero3 .. " " .. numero2)
elseif numero2 > numero1 and numero1 > numero3 then
    print(numero2 .. " " .. numero1 .. " " .. numero3)
elseif numero2 > numero3 and numero3 > numero1 then
    print(numero2 .. " " .. numero3 .. " " .. numero1)
elseif numero3 > numero1 and numero1 > numero2 then
    print(numero3 .. " " .. numero1 .. " " .. numero2)
else
    print(numero3 .. " " .. numero2 .. " " .. numero1)
end 
