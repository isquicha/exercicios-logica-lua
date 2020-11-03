--[[
Tendo como dados de entrada a altura de uma pessoa,
construa um algoritmo que calcule seu peso ideal,
usando a seguinte fórmula: (72.7*altura) - 58
--]]
print("Digite sua altura em metros: ")
altura = tonumber(io.read())
pesoIdeal = (72.7 * altura) - 58
print(string.format("Seu peso ideal é %.2fkg", pesoIdeal))
-- ou print("Seu peso ideal é: " .. pesoIdeal .. "kg")
