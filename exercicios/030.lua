--[[
Faça um programa para o cálculo de uma folha de pagamento, sabendo que os
descontos são do Imposto de Renda, que depende do salário bruto
(conforme tabela abaixo) e 10% para o INSS e que o FGTS corresponde a 11% do
Salário Bruto, mas não é descontado (é a empresa que deposita).

O Salário Líquido corresponde ao Salário Bruto menos os descontos.
O programa deverá pedir ao usuário o valor da sua hora e a quantidade de horas
trabalhadas no mês.

Desconto do IR:
    Salário Bruto até 900 (inclusive) - isento
    Salário Bruto até 1500 (inclusive) - desconto de 5%
    Salário Bruto até 2500 (inclusive) - desconto de 10%
    Salário Bruto acima de 2500 - desconto de 20%

Imprima na tela as informações, dispostas conforme o exemplo abaixo.
No exemplo o valor da hora é 5 e a quantidade de hora é 220.

        Salário Bruto: (5 * 220)        : R$ 1100,00
        (-) IR (5%)                     : R$   55,00
        (-) INSS ( 10%)                 : R$  110,00
        FGTS (11%)                      : R$  121,00
        Total de descontos              : R$  165,00
        Salário Liquido                 : R$  935,00
--]]
print("Digite quanto você recebe por hora: ")
valorDaHora = tonumber(io.read())
print("Digite quantas horas você trabalhou esse mês: ")
horasTrabalhadas = tonumber(io.read())
salarioBruto = valorDaHora * horasTrabalhadas
if salarioBruto <= 900 then
    descontoIr = 0.0
elseif salarioBruto <= 1500 then
    descontoIr = 5
elseif salarioBruto <= 2500 then
    descontoIr = 10
else
    descontoIr = 20
end

IR = salarioBruto * (descontoIr / 100)
INSS = salarioBruto * (10 / 100)
FGTS = salarioBruto * (11 / 100)
totalDeDescontos = IR + INSS
salarioLiquido = salarioBruto - totalDeDescontos

print(
    string.format("\nSalário Bruto     : R$%.2f", salarioBruto),
    string.format("\n(-) IR (5%%)       : R$%.2f", IR),
    string.format("\n(-) INSS (10%%)    : R$%.2f", INSS),
    string.format("\nFGTS (11%%)        : R$%.2f", FGTS),
    string.format("\nTotal de descontos: R$%.2f", totalDeDescontos),
    string.format("\nSalário Liquido   : R$%.2f", salarioLiquido)
)
