--[[
Faça um programa que receba dois números inteiros e gere os números inteiros
que estão no intervalo compreendido por eles.
--]]
print("Digite um numero: ")
primeiro_numero = tonumber(io.read())
print("Digite um numero: ")
segundo_numero = tonumber(io.read())
for i = primeiro_numero + 1, segundo_numero do
    print(i)
end