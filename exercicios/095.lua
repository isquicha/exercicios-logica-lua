--[[
Faça um Programa que leia um vetor de 10 caracteres, e diga quantas consoantes
foram lidas. Imprima as consoantes.
--]] --
caracteres = {}
consoantes = 0
for i = 1, 10 do
    io.write("Digite um caractere: ")
    table.insert(caracteres, string.sub(io.read(), 1, 1))
end
for _, c in pairs(caracteres) do
    c = c:upper()
    if c ~= "A" and c ~= "E" and c ~= "I" and c ~= "O" and c ~= "U" then
        consoantes = consoantes + 1
    end
end
print(string.format("Foram lidas %d consoantes.", consoantes))
