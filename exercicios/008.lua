--[[
Faça um Programa que pergunte quanto você ganha por hora e o número de horas
trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês.
--]]
print("Digite quanto você ganha por hora: ")
salarioHora = tonumber(io.read())
print("Digite quantas horas você trabalhou esse mês: ")
horasTrabalhadas = tonumber(io.read())
salarioMes = salarioHora * horasTrabalhadas
print("Seu salário do mês é de R$" .. salarioMes)
