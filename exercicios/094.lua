--[[
Faça um Programa que leia 4 notas, mostre as notas e a média na tela.
--]] --
notas = {}
soma = 0
for i = 1, 4 do
    io.write(string.format("Digite a %da nota: ", i))
    table.insert(notas, tonumber(io.read()))
end
print("Notas digitadas: ")
for _, nota in pairs(notas) do
    print(nota)
    soma = soma + nota
end
print(string.format("A media das notas e %.2f.", soma / 4))
