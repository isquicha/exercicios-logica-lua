--[[
Faça um Programa que leia 20 números inteiros e armazene-os num vetor.
Armazene os números pares no vetor PAR e os números IMPARES no vetor impar.
Imprima os três vetores.
--]] --
NUMEROS = 20
inteiros = {}
pares = {}
impares = {}

for i = 1, NUMEROS do
    io.write("Digite um inteiro: ")
    numero = tonumber(io.read())
    numero = numero - numero % 1 -- Garante que o numero é inteiro
    table.insert(inteiros, numero)
    if numero % 2 == 0 then
        table.insert(pares, numero)
    else
        table.insert(impares, numero)
    end
end

print("\nInteiros")
for _, numero in pairs(inteiros) do io.write(string.format("%d ", numero)) end
print("\nPares")
for _, numero in pairs(pares) do io.write(string.format("%d ", numero)) end
print("\nImpares")
for _, numero in pairs(impares) do io.write(string.format("%d ", numero)) end
