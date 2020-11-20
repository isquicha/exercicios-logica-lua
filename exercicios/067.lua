--[[
Faça um programa que mostre todos os primos entre 1 e N sendo N um número
inteiro fornecido pelo usuário.

O programa deverá mostrar também o número de divisões que ele executou para
encontrar os números primos.

Serão avaliados o funcionamento, o estilo e o número de testes (divisões)
executados.
--]]
print("Digite um numero inteiro: ")
numero = tonumber(io.read())
if numero == 1 or numero == 2 then
    print(
        string.format(
            "%d é primo e foram executadas"
                .. " 0 divisões para descobrir isso", numero
        )
    )
elseif numero % 2 == 0 then
    print(
        string.format(
            "%d não é primo e foi executada"
                .. " uma divisão para descobrir isso", numero
        )
    )
else
    contador = 1
    primo = true
    for i = 3, numero - 1, 2 do
        contador = contador + 1
        if numero % i == 0 then
            primo = false
            break
        end
    end
    if primo then
        print(
            string.format(
                "%d é primo e foram executadas %d "
                    .. "divisões para descobrir isso", numero, contador
            )
        )
    else
        print(
            string.format(
                "%d não é primo e foram executadas"
                    .. " %d divisões para descobrir isso", numero, contador
            )
        )
    end
end
