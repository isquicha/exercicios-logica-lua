--[[
Faça um Programa que leia um número e exiba o dia correspondente da semana.
(1-Domingo, 2- Segunda, etc.),
se digitar outro valor deve aparecer valor inválido.
--]]
print('Digite o número do dia da semana: ')
diaInt = tonumber(io.read())
diaStr = ''
if diaInt == 1 then
    diaStr = 'Domingo'
elseif diaInt == 2 then
    diaStr = 'Segunda'
elseif diaInt == 3 then
    diaStr = 'Terça'
elseif diaInt == 4 then
    diaStr = 'Quarta'
elseif diaInt == 5 then
    diaStr = 'Quinta'
elseif diaInt == 6 then
    diaStr = 'Sexta'
elseif diaInt == 7 then
    diaStr = 'Sábado'
end

if diaStr == '' then
    print('Valor inválido')
else
    print(string.format('O dia correspondente é %s', diaStr))
end
