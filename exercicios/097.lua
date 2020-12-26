--[[
Faça um Programa que peça as quatro notas de 10 alunos, calcule e armazene num
vetor a média de cada aluno, imprima o número de alunos com média maior ou
igual a 7.0.
--]] --
ALUNOS = 10
NOTAS = 4

medias = {}
media_sete = 0

for i = 1, ALUNOS do
    media = 0
    for j = 1, NOTAS do
        io.write(string.format("Digite a nota %d do aluno %d: ", j, i))
        media = media + tonumber(io.read())
    end
    media = media / NOTAS
    table.insert(medias, media)
    if media >= 7 then media_sete = media_sete + 1 end
end
print("\nA media dos alunos foi:")
for indice, media in pairs(medias) do
    print(string.format("Aluno %d: %.2f", indice, media))
end
print(string.format("%d alunos tiveram media maior ou igual a 7.", media_sete))
