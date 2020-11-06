--[[
Faça um Programa que leia três números e mostre o maior deles.
--]]
print("Digite um numero: ")
numero1 = tonumber(io.read())
print("Digite outro numero: ")
numero2 = tonumber(io.read())
print("Digite mais um numero: ")
numero3 = tonumber(io.read())
if numero1 > numero2 and numero1 > numero3 then
    print(numero1 .." foi o maior numero digitado.")
elseif numero2 > numero1 and numero2 > numero3 then
    print(numero2 .." foi o maior numero digitado.")
else
    print(numero3 .." foi o maior numero digitado.")
end
