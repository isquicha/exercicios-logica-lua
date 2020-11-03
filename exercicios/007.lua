--[[
Faça um Programa que calcule a área de um quadrado, em seguida mostre o dobro
desta área para o usuário.
--]]
print("Digite o lado do quadrado: ")
lado = tonumber(io.read())
dobroDaArea = (lado * lado) * 2
print("O dobro da área é: " .. dobroDaArea)
