--[[
Faça um programa que, dado um conjunto de N números, determine o menor valor,
o maior valor e a soma dos valores.
--]]
-- Para resolver com um laço é necessário utilizar uma lista
numeros = {}
contador = 0
while true do
    print("Digite um número ou 'p' para parar e exibir os resultados: ")
    valor = io.read()
    if valor == "P" or valor == "p" then break end
    contador = contador + 1
    table.insert(numeros, contador, tonumber(valor))
end

menor_numero = math.huge
for i = 1, contador do
    if numeros[i] < menor_numero then
        menor_numero = numeros[i]
    end
end
print(string.format("O menor número é %f", menor_numero))

maior_numero = -math.huge
for i = 1, contador do
    if numeros[i] > maior_numero then
        maior_numero = numeros[i]
    end
end
print(string.format("O maior número é %f", maior_numero))

soma = 0
for i = 1, contador do
    soma = soma + numeros[i]
end
print(string.format("A soma dos números é %f", soma))
