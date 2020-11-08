--[[
Faça um Programa para um caixa eletrônico.

O programa deverá perguntar ao usuário a valor do saque e depois informar
quantas notas de cada valor serão fornecidas.

As notas disponíveis serão as de 1, 5, 10, 50 e 100 reais.
O valor mínimo é de 10 reais e o máximo de 600 reais.

O programa não deve se preocupar com a quantidade de notas existentes na
máquina.

Exemplo 1:
Para sacar a quantia de 256 reais, o programa fornece duas notas de 100,
uma nota de 50, uma nota de 5 e uma nota de 1;

Exemplo 2:
Para sacar a quantia de 399 reais, o programa fornece três notas de 100,
uma nota de 50, quatro notas de 10, uma nota de 5 e quatro notas de 1.
--]]
print("Digite o valor a ser sacado (entre 10 e 600): ")
valor = tonumber(io.read())
-- Os parênteses não são necessários, mas vou passar a usá-los
if (valor < 10 or valor > 600) then
    print("Valor inválido!")
else
    -- Pegamos a centena com uma divisão inteira
    cem = math.floor(valor / 100)
    -- Subtraímos as centenas retiradas do valor total
    valor = valor - cem * 100
    cinquenta = math.floor(valor / 50) -- Idem para as outras coisas
    valor = valor - cinquenta * 50
    dez = math.floor(valor / 10)
    valor = valor - dez * 10
    cinco = math.floor(valor / 5)
    valor = valor - cinco * 5
    um = valor -- Depois de subtrair as de cinco só sobram as de um
    if (cem > 0) then print(string.format("%i nota(s) de cem", cem)) end
    if (cinquenta > 0) then
        print(string.format("%i nota(s) de cinquenta", cinquenta))
    end
    if (dez > 0) then print(string.format("%i nota(s) de dez", dez)) end
    if (cinco > 0) then print(string.format("%i nota(s) de cinco", cinco)) end
    if (um > 0) then print(string.format("%i nota(s) de um", um)) end
end
