--[[
As Organizações Tabajara resolveram dar um aumento de salário aos seus
colaboradores e lhe contrataram para desenvolver o programa que calculará os
reajustes.

Faça um programa que recebe o salário de um colaborador e o reajuste segundo o
seguinte critério, baseado no salário atual:

    salários até R$ 280,00 (incluindo) : aumento de 20%
    salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
    salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
    salários de R$ 1500,00 em diante :
        aumento de 5% Após o aumento ser realizado,
    informe na tela:
        o salário antes do reajuste;
        o percentual de aumento aplicado;
        o valor do aumento;
        o novo salário, após o aumento.
--]]
print("Digite seu salário atual: ")
salarioAnterior = tonumber(io.read())

if salarioAnterior <= 280 then
    percentualDeAumento = 20
elseif salarioAnterior <= 750 then
    percentualDeAumento = 15
elseif salarioAnterior <= 1500 then
    percentualDeAumento = 10
else
    percentualDeAumento = 5
end
diferencaEntreSalarios = salarioAnterior * (percentualDeAumento / 100)
salarioAtual = salarioAnterior + diferencaEntreSalarios
print(
    string.format(
        "Seu salário antes do reajuste era de R$%.2f", salarioAnterior
        )
    )
print(
    string.format(
        "Seu salário foi aumentado em %.1f%%", percentualDeAumento
    )
)
print(
    string.format(
        "Seu salário foi aumentado em R$%.2f", diferencaEntreSalarios
    )
)
print(
    string.format(
        "Seu salário atual é de R$%.2f", salarioAtual
    )
)
