--[[
Uma academia deseja fazer um senso entre seus clientes para descobrir o mais
alto, o mais baixo, a mais gordo e o mais magro, para isto você deve fazer um
programa que pergunte a cada um dos clientes da academia seu código,
sua altura e seu peso.

O final da digitação de dados deve ser dada quando o usuário digitar 0 (zero)
no campo código.

Ao encerrar o programa também deve ser informados os códigos e valores do
clente mais alto, do mais baixo, do mais gordo e do mais magro, além da média
das alturas e dos pesos dos clientes.
--]] --
codigo_mais_gordo = ""
codigo_mais_magro = ""
codigo_mais_alto = ""
codigo_mais_baixo = ""

-- ? No lugar de -math.huge e math.huge, vão os valores 0 e 1000 pois
-- ? Não dá pra alguém pesar menos que 0kg
peso_mais_gordo = 0
-- ? Não deve ter alguém que pese mais que 1 tonelada
peso_mais_magro = 1000
-- ? Mesma ideia pro peso serve para a altura
altura_mais_alto = 0
altura_mais_baixo = 500 -- * Altura vai ser em centímetros

soma_dos_pesos = 0
soma_das_alturas = 0
quantidade_de_clientes = 0

while true do
    io.write("Digite o codigo do cliente: ")
    codigo = io.read()
    if codigo == "0" then break end
    quantidade_de_clientes = quantidade_de_clientes + 1

    io.write("Digite a altura do cliente (em centímetros): ")
    altura = tonumber(io.read())
    io.write("Digite o peso do cliente (em kg): ")
    peso = tonumber(io.read())

    soma_dos_pesos = soma_dos_pesos + peso
    soma_das_alturas = soma_das_alturas + altura

    if altura > altura_mais_alto then
        altura_mais_alto = altura
        codigo_mais_alto = codigo
    end

    if altura < altura_mais_baixo then
        altura_mais_baixo = altura
        codigo_mais_baixo = codigo
    end

    if peso > peso_mais_gordo then
        peso_mais_gordo = peso
        codigo_mais_gordo = codigo
    end

    if peso < peso_mais_magro then
        peso_mais_magro = peso
        codigo_mais_magro = codigo
    end
end

media_das_alturas = soma_das_alturas / quantidade_de_clientes
media_dos_pesos = soma_dos_pesos / quantidade_de_clientes

io.write(
    string.format(
        "O cliente mais alto é o que tem o código %s", codigo_mais_alto
    )
    .. string.format(" e ele possui %dcm de altura\n", altura_mais_alto)     
    .. string.format(
        "O cliente mais baixo é o que tem o código %s", codigo_mais_baixo
    )
    .. string.format(" e ele possui %dcm de altura\n", altura_mais_baixo)
    .. string.format(
        "O cliente mais gordo é o que tem o código %s", codigo_mais_gordo
    )
    .. string.format(" e ele pesa %.2fkg\n", peso_mais_gordo)
    .. string.format(
        "O cliente mais magro é o que tem o código %s", codigo_mais_magro
    )
    .. string.format(" e ele pesa %.2fkg\n", peso_mais_magro)
    .. string.format(
        "A média de altura dos clientes é de %.2fcm\n", media_das_alturas
    )
    .. string.format(
        "A média de peso dos clientes é de %.2fkg", media_dos_pesos
    )
)
