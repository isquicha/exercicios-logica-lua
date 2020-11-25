--[[
Faça um programa que calcule o número médio de alunos por turma.
Para isto, peça a quantidade de turmas e a quantidade de
alunos para cada turma.
As turmas não podem ter mais de 40 alunos.
--]] --
print("Digite quantas turmas tem: ")
turmas = tonumber(io.read())
media = 0
for i = 0, turmas - 1 do
    while true do
        print(string.format("Digite quantos alunos tem na turma %d: ", i + 1))
        alunos = tonumber(io.read())
        if alunos <= 40 then break end
    end
    media = ((media * i) + alunos) / (i + 1)
end
print(string.format("A media de alunos por turma é %.2f", media))
