--[[
Faça um Programa que leia um vetor A com 10 números inteiros, calcule e mostre
a soma dos quadrados dos elementos do vetor.
--]] --
soma_dos_quadrados = 0
for i = 1, 10 do
    io.write(string.format("Digite o %do numero inteiro: ", i))
    numero = tonumber(io.read())
    soma_dos_quadrados = soma_dos_quadrados + (numero * numero)
end
print(
    string.format(
        "A soma dos quadrados dos numeros digitados eh %d", soma_dos_quadrados
    )
)

