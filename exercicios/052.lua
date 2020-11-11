--[[
Faça um programa que leia 5 números e informe o maior número.
--]]
-- Existem várias formas de se resolver este problema, e adotei aqui uma forma
-- mais voltada a Lógica do quê a praticidade.

-- Vamos precisar da constante 'infinito' da biblioteca matemática

-- Neste não faz sentido usar estrutura de repetição sem utiliza listas
numeros = {}  -- Uma lista de números vazia
for i=1,5 do
    print("Digite um número (serão 5 ao todo): ")
    numero = tonumber(io.read())

    -- Coloca o número digitado na lista de números
    numeros[i] = numero
end
-- Iniciamos um número com o menor valor possível, neste caso, menos infinito
maior_numero = -math.huge
-- Colocar um valor muito pequeno ao invés de infinito pode dar certo também,
-- desde que o usuário não digite todos os valores menores do que este primeiro
-- valor setado. Por isso usamos o -infinito, pois não tem nada menor que isso.

-- Para cada número na lista de números
for i=1,5 do
    -- Se o número atual for maior do que o maior número guardado
    if numeros[i] > maior_numero then
        -- Então o número atual passa a ser o maior número
        maior_numero = numeros[i]
    end
end
print(maior_numero)
