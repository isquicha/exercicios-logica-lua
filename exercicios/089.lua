--[[
Faça um programa que peça um numero inteiro positivo e em seguida mostre este
numero invertido.
Exemplo:
  12376489
  => 98467321
--]] --
io.write("Digite um inteiro positivo: ")
numero = io.read()
numero = string.reverse(numero)
print(string.format("=> %d", numero))
