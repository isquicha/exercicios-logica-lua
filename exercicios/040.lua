--[[
Faça um Programa que peça um número e informe se o número é inteiro ou decimal.
Dica: utilize uma função de arredondamento.
--]]
print("Digite um número: ")
numero = tonumber(io.read())
if (numero % 1 == 0) then
    print("Inteiro")
else
    print("Decimal")
end
