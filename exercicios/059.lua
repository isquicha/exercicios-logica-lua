--[[
Faça um programa que peça 10 números inteiros, calcule e mostre a quantidade de
números pares e a quantidade de números impares.
--]]
pares = 0
impares = 0
for _ = 1, 10 do
    print("Digite um numero: ")
    if tonumber(io.read()) % 2 == 0 then
        pares = pares + 1
    else
        impares = impares + 1
    end
end
print(string.format("Pares: %d\nÍmpares: %d", pares, impares))
