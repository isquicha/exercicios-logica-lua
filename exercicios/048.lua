--[[
Faça um programa que leia e valide as seguintes informações:
    Nome: maior que 3 caracteres;
    Idade: entre 0 e 150;
    Salário: maior que zero;
    Sexo: 'f' ou 'm';
    Estado Civil: 's', 'c', 'v', 'd';
--]]
print('Digite o nome: ')
nome = io.read()
while #nome < 4 do
    print('Nome inválido!')
    print('Digite o nome: ')
    nome = io.read()
end
print('Digite a idade: ')
idade = tonumber(io.read())
while (idade < 0) or (idade > 150) do
    print('Idade inválida!')
    print('Digite a idade: ')
    idade = tonumber(io.read())
end
print('Digite o salário: ')
salario = tonumber(io.read())
while salario <= 0 do
    print('Salario inválido!')
    print('Digite o salário: ')
salario = tonumber(io.read())
end
print('Digite o sexo (f ou m): ')
sexo = io.read()
while (sexo ~= 'f') and (sexo ~= 'm') do
    print('Sexo inválido!')
    print('Digite o sexo (f ou m): ')
    sexo = io.read()
end
print('Digite o estado civil (s, c, v, d): ')
estadoCivil = io.read()
while (estadoCivil ~= 's') and (estadoCivil ~= 'c') and (estadoCivil ~= 'v')
and (estadoCivil ~= 'd') do
    print('Estado civil inválido!')
    print('Digite o estado civil (s, c, v, d): ')
    estadoCivil = io.read()
end
