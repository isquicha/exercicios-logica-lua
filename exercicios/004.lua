--[[
Faça um Programa que peça as 4 notas bimestrais e mostre a média.
--]]
print("Digite a nota do primeiro bimestre: ")
nota1 = tonumber(io.read())	
print("Digite a nota do segundo bimestre: ")
nota2 = tonumber(io.read())
print("Digite a nota do terceiro bimestre: ")
nota3 = tonumber(io.read())
print("Digite a nota do quarto bimestre: ")
nota4 = tonumber(io.read())	
media = (nota1 + nota2 + nota3 + nota4) / 4
print("A média das quatro unidades é: " .. media)
