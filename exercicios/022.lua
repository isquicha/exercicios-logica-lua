--[[
Faça um Programa que verifique se uma letra digitada é vogal ou consoante.
--]]
print('Digite uma letra: ')
letra = string.upper(io.read())
-- string.upper() vai deixar as letras maiúsculas, facilitando a comparação
if letra == 'A' or letra == 'E' or letra == 'I' or letra == 'O'
or letra == 'U' then
    print('Vogal')
else
    print('Consoante')
end
