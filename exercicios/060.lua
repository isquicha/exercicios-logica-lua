--[[
A série de Fibonacci é formada pela seqüência 1,1,2,3,5,8,13,21,34,55,...
Faça um programa capaz de gerar a série até o n−ésimo termo.
--]]
print("Digite o numero de termos da série de Fibonacci: ")
termos = tonumber(io.read())
numero = 1
numero_anterior = 0
for _ = 0, termos - 1 do
    print(numero)
    aux = numero
    numero = numero + numero_anterior
    numero_anterior = aux
end
