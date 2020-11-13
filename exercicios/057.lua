--[[
Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer número
inteiro entre 1 a 10.
O usuário deve informar de qual numero ele deseja ver a tabuada.
A saída deve ser conforme o exemplo abaixo:
    Tabuada de 5:
    5 X 1 = 5
    5 X 2 = 10
    ...
    5 X 10 = 50
--]]
print("Digite um numero de 1 a 10: ")
numero = tonumber(io.read())
for i = 1, 10 do
    print(string.format("%d X %d = %d", numero, i, numero * i))
end
