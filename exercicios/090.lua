--[[
Faça um programa que mostre os n termos da Série a seguir:
  S = 1/1 + 2/3 + 3/5 + 4/7 + 5/9 + ... + n/m.
Imprima no final a soma da série.
--]] --
soma = 0
io.write("Digite n: ")
n = tonumber(io.read())
m = 1
io.write("S = ")
for i = 1, n do
    io.write(string.format("%d/%d", i, m))
    if i < n and n > 1 then
        io.write(" + ")
    else
        print(".")
    end
    soma = soma + (i / m)
    m = m + 2
end
print(string.format("A soma da serie deu %.2f", soma))
