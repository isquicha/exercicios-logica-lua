--[[
Faça um Programa que peça um número inteiro e determine se ele é par ou impar.
Dica: utilize o operador módulo (resto da divisão).
--]]
print("Digite um número inteiro: ")
numero = tonumber(io.read())
if (numero % 2 == 0) then
    print("Par")
else
    print("Ímpar")
end
