--[[
Altere o programa de cálculo dos números primos, informando, caso o número não
seja primo, por quais número ele é divisível.
--]]
print("Digite um numero inteiro: ")
numero = tonumber(io.read())
primo = true
for i = 2, numero - 1 do
    if numero % i == 0 then
        primo = false
        print(string.format("%d não é primo! É divisível por %d.",numero, i))
    end
end
if primo then print(string.format("%d é primo!", numero)) end
