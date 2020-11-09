--[[
Faça um programa que faça 5 perguntas para uma pessoa sobre um crime.
As perguntas são:
    "Telefonou para a vítima?"
    "Esteve no local do crime?"
    "Mora perto da vítima?"
    "Devia para a vítima?"
    "Já trabalhou com a vítima?"

O programa deve no final emitir uma classificação sobre a participação
da pessoa no crime.

Se a pessoa responder positivamente a 2 questões ela deve ser classificada
como "Suspeita", entre 3 e 4 como "Cúmplice" e 5 como "Assassino".
Caso contrário, ele será classificado como "Inocente".
--]]
positivos = 0
print("Telefonou para a vítima? (S ou N): ")
resposta = io.read()
if (resposta == 'S' or resposta == 's') then positivos = positivos + 1 end
print("Esteve no local do crime? (S ou N): ")
resposta = io.read()
if (resposta == 'S' or resposta == 's') then positivos = positivos + 1 end
print("Mora perto da vítima? (S ou N): ")
resposta = io.read()
if (resposta == 'S' or resposta == 's') then positivos = positivos + 1 end
print("Devia para a vítima? (S ou N): ")
resposta = io.read()
if (resposta == 'S' or resposta == 's') then positivos = positivos + 1 end
print("Já trabalhou com a vítima? (S ou N): ")
resposta = io.read()
if (resposta == 'S' or resposta == 's') then positivos = positivos + 1 end

if (positivos < 2) then
    print("Inocente")
elseif (positivos == 2) then
    print("Suspeita")
elseif (positivos < 5) then
    print("Cúmplice")
else
    print("Assassino")
end
