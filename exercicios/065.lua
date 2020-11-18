--[[
Faça um programa que peça um número inteiro e determine se ele é ou não um
número primo. Um número primo é aquele que é divisível somente por ele mesmo
e por 1.
--]]
print("Digite um numero inteiro: ")
numero = tonumber(io.read())
primo = true
for i = 2, numero - 1 do
    if numero % i == 0 then
        primo = false
        print(string.format("%d não é primo!",numero))
        break
    end
end
if primo then print(string.format("%d é primo!", numero)) end
