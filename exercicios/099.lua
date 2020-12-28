--[[
Faça um Programa que peça a idade e a altura de 5 pessoas, armazene cada
informação no seu respectivo vetor. Imprima a idade e a altura na ordem
inversa a ordem lida.
--]] --
PESSOAS = 5
idades = {}
alturas = {}
for i = 1, PESSOAS do
    io.write(string.format("Digite a idade da pessoa %d: ", i))
    table.insert(idades, tonumber(io.read()))
    io.write(string.format("Digite a altura da pessoa %d em cm: ", i))
    table.insert(alturas, tonumber(io.read()))
end

for i = PESSOAS, 1, -1 do
    print(
        string.format(
            "A pessoa %d mede %.2fcm e tem %d ano(s)", i, alturas[i], idades[i]
        )
    )
end
