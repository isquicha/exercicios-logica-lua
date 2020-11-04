--[[
Faça um Programa que peça um valor e mostre na tela se o valor é
positivo ou negativo.
--]]
print("Digite um numero: ")
valor = tonumber(io.read())
if valor > 0 then
    print('O valor é positivo')
elseif valor < 0 then
    print('O valor é negativo')
end
