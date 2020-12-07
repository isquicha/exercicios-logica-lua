--[[
Faça um programa que leia uma quantidade indeterminada de números positivos e
conte quantos deles estão nos seguintes intervalos:
[0-25], [26-50], [51-75] e [76-100].

A entrada de dados deverá terminar quando for lido um número negativo.
--]] --
range1 = 0
range2 = 0
range3 = 0
range4 = 0

while true do
    io.write("Digite um numero inteiro de 0 a 100 (ou negativo para parar): ")
    numero = tonumber(io.read())
    if numero < 0 then break end
    if numero <= 25 then
        range1 = range1 + 1
    elseif numero <= 50 then
        range2 = range2 + 1
    elseif numero <= 75 then
        range3 = range3 + 1
    elseif numero <= 100 then
        range4 = range4 + 1
    else
        print("Numero invalido!")
    end
end
print("Dos numeros digitados: ")
print(string.format("%d foram de [0-25]", range1))
print(string.format("%d foram de [26-50]", range2))
print(string.format("%d foram de [51-75]", range3))
print(string.format("%d foram de [76-100]", range4))
