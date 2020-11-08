--[[
Faça um Programa que peça um número correspondente a um determinado ano e em
seguida informe se este ano é ou não bissexto.
--]]
print("Digite um ano: ")
ano = tonumber(io.read())
if ano % 4 == 0 then
    print(string.format("%i é bissexto!", ano))
else
    print(string.format("%i não é bissexto!", ano))
end
