--[[
Foram anotadas as idades e alturas de 30 alunos.
Faça um Programa que determine quantos alunos com mais de 13 anos possuem
altura inferior à média de altura desses alunos.
--]] --
ALUNOS = 30
idades = {}
alturas = {}
media_de_altura = 0
abaixo_da_media = 0

for i = 1, ALUNOS do
    io.write(string.format("Digite a idade do aluno %d: ", i))
    table.insert(idades, tonumber(io.read()))
    io.write(string.format("Digite a altura em cm do aluno %d: ", i))
    altura = tonumber(io.read())
    table.insert(alturas, altura)
    media_de_altura = media_de_altura + altura
end
media_de_altura = media_de_altura / ALUNOS
for i = 1, ALUNOS do
    if idades[i] > 13 then
        if alturas[i] < media_de_altura then
            abaixo_da_media = abaixo_da_media + 1
        end
    end
end

print(
    string.format(
        "%d alunos com mais de 13 anos tem altura abaixo da media",
        abaixo_da_media
    )
)
