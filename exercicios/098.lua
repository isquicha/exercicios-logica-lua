--[[
Faça um Programa que leia um vetor de 5 números inteiros, mostre a soma, a
multiplicação e os números.
--]] --
inteiros = {}
soma = 0
multiplicacao = 1
for i = 1, 5 do
    io.write(string.format("Digite o %do inteiro: ", i))
    numero = tonumber(io.read())
    soma = soma + numero
    multiplicacao = multiplicacao * numero
    table.insert(inteiros, numero)
end
print("Numeros digitados:")

for _, numero in pairs(inteiros) do io.write(string.format("%d ", numero)) end
print(string.format("\nA soma dos numeros eh %d", soma))
print(string.format("A multiplicacao dos numeros eh %d", multiplicacao))
