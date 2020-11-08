--[[
Faça um programa que lê as duas notas parciais obtidas por um aluno numa
disciplina ao longo de um semestre, e calcule a sua média.

A atribuição de conceitos obedece à tabela abaixo:
    Média de Aproveitamento  Conceito
    Entre 9.0 e 10.0         A
    Entre 7.5 e 9.0          B
    Entre 6.0 e 7.5          C
    Entre 4.0 e 6.0          D
    Entre 4.0 e zero         E

O algoritmo deve mostrar na tela as notas, a média,
o conceito correspondente e a mensagem “APROVADO” se o conceito for A, B ou C
ou “REPROVADO” se o conceito for D ou E.
--]]
print('Digite a primeira nota do semestre: ')
nota1 = tonumber(io.read())
print('Digite a segunda nota do semestre: ')
nota2 = tonumber(io.read())

media = (nota1 + nota2)/2

if media >= 9 then
    aproveitamento = 'A'
elseif media >= 7.5 then
    aproveitamento = 'B'
elseif media >= 6 then
    aproveitamento = 'C'
elseif media >= 4 then
    aproveitamento = 'D'
else
    aproveitamento = 'E'
end

if aproveitamento == 'D' or aproveitamento == 'E' then
    print(string.format("REPROVADO\nAproveitamento: %s", aproveitamento))
else
    print(string.format("APROVADO\nAproveitamento: %s", aproveitamento))
end
