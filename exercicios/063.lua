--[[
Altere o programa anterior para que ele aceite apenas números entre 0 e 1000.
--]]
numeros = {}
contador = 0
while true do
    print(
        "Digite um número entre 0 e 1000 "
        .. "ou 'p' para parar e exibir os resultados: "
    )
    valor = io.read()
    if valor == "P" or valor == "p" then break end
    valor = tonumber(valor)
    if valor >= 0 and valor <= 1000 then
        contador = contador + 1
        table.insert(numeros, contador, valor)
    end
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

