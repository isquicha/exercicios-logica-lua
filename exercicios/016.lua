--[[
Faça um programa para uma loja de tintas.
O programa deverá pedir o tamanho em metros quadrados da área a ser pintada.

Considere que a cobertura da tinta é de 1 litro para cada 3 metros
quadrados e que a tinta é vendida em latas de 18 litros, que custam R$ 80,00.

Informe ao usuário a quantidades de latas de tinta
a serem compradas e o preço total.
--]]
print("Digite a área em m² que será pintada: ")
area = tonumber(io.read())
rendimentoDaTinta = 3 -- 1 litro rende 3 metros quadrados
litrosNaLata = 18
precoDaLata = 80.00
-- Observe que precisamos arredondar o número de latas para cima
-- visto que não podemos comprar, por exemplo, três latas e maio de tinta
-- Num caso como este, o correto é comprar 4 latas
latasAComprar = math.ceil(area / (rendimentoDaTinta * litrosNaLata))
precoTotal = latasAComprar * precoDaLata
print(
    string.format(
        "Você terá de comprar %i lata(s), gastando R$%.2f", 
        latasAComprar, precoTotal
    )
)
-- Note que o %i correspode a substituição por uma variável de número inteiro
-- Enquanto o %f para uma variável real (com valores decimais)
-- Lembrando que %.2f serve para exibir a real com 2 casas decimais
