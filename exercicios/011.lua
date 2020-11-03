--[[
Faça um Programa que peça 2 números inteiros e um número real.
Calcule e mostre:
    o produto do dobro do primeiro com metade do segundo.
    a soma do triplo do primeiro com o terceiro.
    o terceiro elevado ao cubo.
--]]
print("Digite um número inteiro: ")
numero1 = tonumber(io.read())	
print("Digite mais um número inteiro: ")
numero2 = tonumber(io.read())
print("Digite um número real: ")
numero3 = tonumber(io.read())	
a = (numero1 * 2) * (numero2 / 2.0)
b = (numero1 * 3) + numero3
c = math.pow(numero3, 3)
-- Ou c = numero3 * numero3 * numero3
print(a .. "\n" .. b .. "\n" .. c)
