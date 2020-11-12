--[[
Faça um programa que leia 5 números e informe a soma e a média dos números.
--]]

total = 0
for _ = 0, 4 do
    print("Digite um numero: ")
    total = total + tonumber(io.read())
end
print(string.format("A média é %f", total/5))
