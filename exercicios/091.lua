--[[
Sendo H= 1 + 1/2 + 1/3 + 1/4 + ... + 1/N,
Faça um programa que calcule o valor de H com N termos.
--]] --
h = 0
io.write("Digite o numero de termos: ")
for i = 1, tonumber(io.read()) do h = h + (1 / i) end
print(string.format("H = %f", h))
