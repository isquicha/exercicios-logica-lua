--[[
Tendo como dado de entrada a altura (h) de uma pessoa,
construa um algoritmo que calcule seu peso ideal,
utilizando as seguintes fórmulas:
    Para homens: (72.7*h) - 58
    Para mulheres: (62.1*h) - 44.7
--]]
print("Digite sua altura em metros: ")
altura = tonumber(io.read())
pesoIdealHomem = (72.7 * altura) - 58
pesoIdealMulher = (62.1 * altura) - 44.7
print(
    string.format(
        "Seu peso ideal é %.2fkg se você for homem ou " .. 
        "%.2fkg se você for mulher", pesoIdealHomem, pesoIdealMulher
    )
)
-- ou 
-- print(
--     "Seu peso ideal é: " .. pesoIdealHomem .. 
--     "kg se você for homem ou " .. pesoIdealMulher .. 
--     "kg se você for mulher"
-- )
