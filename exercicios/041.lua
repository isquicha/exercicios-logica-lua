--[[
Faça um Programa que leia 2 números e em seguida pergunte ao usuário qual
operação ele deseja realizar.

O resultado da operação deve ser acompanhado de uma
frase que diga se o número é:
    par ou ímpar;
    positivo ou negativo;
    inteiro ou decimal.
--]]
print("Digite um número: ")
numero1 = tonumber(io.read())
print("Digite outro número: ")
numero2 = tonumber(io.read())
print("Digite qual operação (+, -, * ou /) deseja realizar: ")
op = io.read()
if (op == '+') then
    resultado = numero1 + numero2
elseif (op == '-') then
    resultado = numero1 - numero2
elseif (op == '*') then
    resultado = numero1 * numero2
elseif (op == '/') then
    resultado = numero1 / numero2
end
print("O resultado é: ")

if (math.floor(resultado) % 2 == 0) then
    print("Par")
else
    print("Ímpar")
end

if (resultado >= 0) then
    print("Positivo")
else
    print("Negativo")
end

if (resultado % 1 == 0) then
    print("Inteiro")
else
    print("Decimal")
end
