--[[
Faça um Programa que leia um número inteiro maior que 0 e menor que 1000 e
imprima a quantidade de centenas, dezenas e unidades do mesmo.

Observando os termos no plural a colocação do "e", da vírgula entre outros.

Exemplo:
326 = 3 centenas, 2 dezenas e 6 unidades
12 = 1 dezena e 2 unidades

Testar com:
326, 300, 100, 320, 310,305, 301, 101, 311, 111, 25, 20, 10, 21, 11, 1, 7 e 16
--]]
tabela = {326, 300, 100, 320, 310,305, 301, 101, 311, 111, 25, 20, 10, 21, 11, 1, 7 , 16}
for _,numero in ipairs(tabela) do
    -- O laço for e a tabela foram utilizados apenas para o teste automático
    -- dos valores. você pode fazer os testes manualmente.
    -- Basta retirar tudo de dentro do laço e descomentar as 2 linhas abaixo!
    --print("Digite um inteiro menor que 1000: ")
    --numero = tonumber(io.read())
    print(string.format("\nNumero: %i", numero))
    unidade = numero % 10
    dezena = math.floor((numero % 100) / 10)
    centena = math.floor(numero / 100)
    separador1 = ""
    separador2 = ""
    -- Se tivermos ambos unidade, dezena e centena
    if centena > 0 and dezena > 0 and unidade > 0 then
        separador1 = " , " -- Precisamos de uma vírgula
        -- Os espaços entre as aspas são importantes
        separador2 = " e " -- E de um e
    -- Senão, se tivermos uma centena e uma dezena
    elseif centena > 0 and dezena > 0 then
        separador1 = " e " -- Precisamos só do e, na frente
        separador2 = ""
    -- Já se tivermos só a centena e a unidade, ou só a dezena e a unidade
    elseif (centena > 0 and unidade > 0) or (dezena > 0 and unidade > 0) then
        separador1 = "" -- Não haverá separador entre centena e dezena
        separador2 = " e " -- Mas sim entre centena/dezena e unidade
    end
    -- Nos outros casos só temos um dos três valores, e os separadores podem continuar sendo vazios ("")

    -- Se a centena não estiver zerada
    if centena > 0 then
        if centena == 1 then
            -- Se ela for igual a 1, colocamos nela por extenso no singular
            centena = "1 centena"
        else
            -- Senão, colocamos ela por extenso no plural
            centena = string.format("%i centenas", centena)
        end
    else
        -- Se estiver zerada, colocamos nela uma string vazia para nada ser impresso
        centena = ""
    end
    -- Mesa coisa para a dezena
    if dezena > 0 then
        if dezena == 1 then
            dezena = "1 dezena"
        else
            dezena = string.format("%i dezenas", dezena)
        end
    else
        dezena = ""
    end
    -- Mesa coisa para a unidade
    if unidade > 0 then
        if unidade == 1 then
            unidade = "1 unidade"
        else
            unidade = string.format("%i unidades", unidade)
        end
    else
        unidade = ""
    end

    -- Importante observar que podemos fazer esse algoritmo facilmente em Lua
    -- por ser uma linguagem dinâmicamente tipada, ou seja, se eu quiser mudar
    -- o valor de uma variável que era do tipo inteiro para um valor do tipo
    -- string ou qualquer outro eu posso
    -- Em linguagens como C++ seria necessário declarar 2 variáveis: 
    -- 1 para o número e outra para o texto

    -- Por fim printamos o resultado
    print(
        string.format(
            "%s%s%s%s%s",
            centena,
            separador1,
            dezena,
            separador2,
            unidade
        )
    )
end
