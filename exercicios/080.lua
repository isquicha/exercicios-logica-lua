--[[
Faça um programa que leia dez conjuntos de dois valores,
o primeiro representando o número do aluno e o segundo representando
a sua altura em centímetros.

Encontre o aluno mais alto e o mais baixo.

Mostre o número do aluno mais alto e o número do aluno mais baixo,
junto com suas alturas.
--]] --
altura_mais_alto = 0
aluno_mais_alto = 0
altura_mais_baixo = 200
aluno_mais_baixo = 0
for i = 1, 10 do
    io.write(string.format("Digite a altura do aluno %d em cm: ", i))
    altura = tonumber(io.read())
    if altura > altura_mais_alto then
        aluno_mais_alto = i
        altura_mais_alto = altura
    end
    if altura < altura_mais_baixo then
        aluno_mais_baixo = i
        altura_mais_baixo = altura
    end
end
print(
    string.format(
        "O mais alto é o aluno %d com %dcm", aluno_mais_alto, altura_mais_alto
    )
)
print(
    string.format(
        "O mais baixo é o aluno %d com %dcm", aluno_mais_baixo,
        altura_mais_baixo
    )
)
