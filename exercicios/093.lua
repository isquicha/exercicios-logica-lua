--[[
Faça um Programa que leia um vetor de 10 números reais e mostre-os na ordem
inversa.
--]] --
numeros = {}
for i = 1, 10 do
    io.write(string.format("Digite o %do numero real: ", i))
    numero = tonumber(io.read())
    table.insert(numeros, numero)
end
io.write("Os numeros inversos sao: ")
for i = 10, 1, -1 do io.write(string.format(" %f", numeros[i])) end
