--[[
Faça um Programa que peça uma data no formato dd/mm/aaaa e determine se a mesma
é uma data válida.
--]]
print("Digite uma data no formato dd/mm/aaaa: ")
data = io.read()
-- Isso pega os digitos de 1 a 2 da data, converte em número e coloca em dia
dia = tonumber(string.sub(data, 1,2))
mes = tonumber(string.sub(data, 4,5)) -- O caractere 3 é uma barra (/)
ano = tonumber(string.sub(data, 7,10))-- O caractere 6 também
 
if ano < 0 then -- Isso não é realmente necessário...
    print("Ano inválido!")
else
    if mes < 1 or mes > 12 then
        print("Mês inválido!")
    elseif mes == 1 or mes == 3 or mes == 5 or mes == 7 or mes == 8 or mes == 10 or mes == 12 then 
    -- meses com 31 dias
        if dia > 0 and dia < 32 then
            print("Data válida!")
        else
            print("Dia inválido!")
        end
    elseif mes == 4 or mes == 6 or mes == 9 or mes == 11 then
    -- meses com 30 dias
        if dia > 0 and dia < 31 then
            print("Data válida!")
        else
            print("Dia inválido!")
        end
    else -- fevereiro
        if ano % 4 == 0 then -- Ano bissexto
            if dia > 0 and dia < 30 then
                print("Data válida!")
            else
                print("Dia inválido!")
            end
        else -- Ano não bissexto
            if dia > 0 and dia < 29 then
                print("Data válida!")
            else
                print("Dia inválido!")
            end
        end
    end
end
