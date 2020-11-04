--[[
Faça um Programa que peça dois números e imprima o maior deles.
--]]
print('Digite um numero: ')
num1 = tonumber(io.read())
print('Digite outro numero: ')
num2 = tonumber(io.read())
if num1 > num2 then
    print(num1) 
else
    print(num2) 
end
