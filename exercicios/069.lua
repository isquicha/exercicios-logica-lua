--[[
Faça um programa que peça para n pessoas a sua idade, ao final o programa
deverá verificar se a média de idade da turma varia entre 0 e 25,26 e 60 e
maior que 60; e então, dizer se a turma é jovem, adulta ou idosa, conforme a
média calculada.
--]] --
print("Digite o numero de pessoas: ")
numero_de_pessoas = tonumber(io.read())
media = 0
for i = 1, numero_de_pessoas do
    print(string.format("Digite a idade da pessoa %d: ", i))
    idade = tonumber(io.read())
    media = ((media * (i - 1)) + idade) / i
end
if media < 26 then
    print("A turma é jovem")
elseif media < 60 then
    print("A turma é adulta")
else
    print("A turma é idosa")
end
