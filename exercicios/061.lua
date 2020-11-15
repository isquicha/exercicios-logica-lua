--[[
Faça um programa que calcule o fatorial de um número inteiro fornecido pelo
usuário. Ex.: 5!=5.4.3.2.1=120
--]]
print("Digite um numero: ")
numero = tonumber(io.read())
fatorial = 1
for i = numero, 1, -1 do
    fatorial = fatorial * i
end
print(string.format("O fatorial de %d é %d", numero, fatorial))
