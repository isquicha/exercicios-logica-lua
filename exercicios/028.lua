--[[
Faça um Programa que pergunte em que turno você estuda.
Peça para digitar M-matutino ou V-Vespertino ou N- Noturno.

Imprima a mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou
"Valor Inválido!", conforme o caso.
--]]
print(("Digite seu turno, M - matutino, V - vespertino, N - noturno: "))
turno = string.upper(io.read())
if turno == 'M' then
    print("Bom dia!")
elseif turno == 'V' then
    print("Boa tarde!")
elseif turno == 'N' then
    print("Boa noite!")
else
    print("Valor inválido!")
end
