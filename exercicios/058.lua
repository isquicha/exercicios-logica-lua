--[[
Faça um programa que peça dois números, base e expoente,
calcule e mostre o primeiro número elevado ao segundo número.
Não utilize a função de potência da linguagem.
--]]
print("Digite a base: ")
base = tonumber(io.read())
print("Digite o expoente: ")
expoente = tonumber(io.read())
numero = 1
for _ = 1, expoente do
    numero = numero * base
end
print(string.format("%f elevado a %d é %f", base, expoente, numero))
