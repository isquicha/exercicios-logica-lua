--[[
Faça um programa que peça uma nota, entre zero e dez.
Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o
usuário informe um valor válido.
--]]
print("Digite uma nota de 0 a 10: ")
nota = tonumber(io.read())
while (nota > 10 or nota < 0) do
    print("Valor Inválido\nDigite uma nota de 0 a 10: ")
    nota = tonumber(io.read())
end
