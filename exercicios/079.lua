--[[
Um funcionário de uma empresa recebe aumento salarial anualmente.

Sabe-se que:
Esse funcionário foi contratado em 1995, com salário inicial de R$ 1.000,00;
Em 1996 recebeu aumento de 1,5% sobre seu salário inicial;
A partir de 1997 (inclusive), os aumentos salariais sempre correspondem ao
dobro do percentual do ano anterior.

Faça um programa que determine o salário atual desse funcionário.
Após concluir isto, altere o programa permitindo que o usuário digite o salário
inicial do funcionário.
--]] --
io.write("Dgite o salário inicial do funcionário em 1995: ")
salario = tonumber(io.read())
ano = 1995
io.write("Digite em que ano estamos: ")
ano_atual = tonumber(io.read())
aumento = 1.5 / 100.0 -- ? 1.5%

while ano < ano_atual do
    ano = ano + 1
    salario = salario * (1 + aumento)
    aumento = aumento * 2
end
print(string.format("O salario em %d é de R$ %.2f", ano, salario))
