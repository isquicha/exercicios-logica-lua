--[[
Faça um programa que leia um nome de usuário e a sua senha e não aceite a senha
igual ao nome do usuário, mostrando uma mensagem de erro e voltando a
pedir as informações.
--]]
print("Digite o nome de usuario: ")
usuario = io.read()
print("Digite a senha: ")
senha = io.read()
while (usuario == senha) do
    print("Nome de usuario nao pode ser igual a senha!\n")
    print("Digite o nome de usuario: ")
    usuario = io.read()
    print("Digite a senha: ")
    senha = io.read()
end
