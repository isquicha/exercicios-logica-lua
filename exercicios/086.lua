--[[
Desenvolver um programa para verificar a nota do aluno em uma prova com 10
questões, o programa deve perguntar ao aluno a resposta de cada questão e ao
final comparar com o gabarito da prova e assim calcular o total de acertos e a
nota (atribuir 1 ponto por resposta certa).

Após cada aluno utilizar o sistema deve ser feita uma pergunta se outro aluno
vai utilizar o sistema.

Após todos os alunos terem respondido informar:
    Maior e Menor Acerto;
    Total de Alunos que utilizaram o sistema;
    A Média das Notas da Turma.
    Gabarito da Prova:
        01 - A
        02 - B
        03 - C
        04 - D
        05 - E
        06 - E
        07 - D
        08 - C
        09 - B
        10 - A

Após concluir isto você poderia incrementar o programa permitindo que o
professor digite o gabarito da prova antes dos alunos usarem o programa.
--]]--
-- * Variáveis globais
aluno_com_maior_acerto = ""
aluno_com_menor_acerto = ""
maior_acerto = 0
media_da_turma = 0
numero_de_alunos = 0
-- ? O gabarito e os alunos vão ser tabelas Lua
-- ? Tabelas guardam conteúdos no formato "chave": valor
gabarito = {}
alunos = {}

io.write("Digite o numero de questoes: ")
numero_de_questoes = tonumber(io.read())
menor_acerto = numero_de_questoes

-- * Programa
-- ? i vai de 1 até o número de questões
for i = 1, numero_de_questoes do
    -- ? O upper() garante que a resposta vai ser sempre uma letra maiuscula
    io.write(string.format("Digite a resposta correta da questao '%d': ", i))
    resposta_atual = string.upper(io.read())
    -- ? Guarda a resposta correta no gabarito
    -- ? Por exemplo, se i = 2 e resposta_atual = "A", e a resposta da questao
    -- ? 1 (que foi preenchida na rodada anterior do laço for) for "C"
    -- ? então: gabarito = {["questao_1"]: "C", ["questao_2"]: "A"}
    gabarito["questao_" .. tostring(i)] = resposta_atual
end

while true do
    -- ? Limpa a tela para os alunos não verem o gabarito, nem a resposta
    -- ? dos colegas
    if not os.execute("cls") then os.execute("clear") end
    io.write("Digite o nome do aluno (ou 0 para sair): ")
    aluno = io.read()
    if aluno == "0" then
        if not os.execute("cls") then os.execute("clear") end
        break
    end

    numero_de_alunos = numero_de_alunos + 1
    -- ? Cria a tabela de respostas e nota do aluno
    alunos[aluno] = {["acertos"] = 0}

    for i = 1, numero_de_questoes do
        io.write(
            string.format(
                "Digite a resposta que o aluno %s deu para a questao %i: ",
                aluno, i
            )
        )
        resposta_atual = string.upper(io.read())
        -- ? Guarda a resposta do aluno na tabela de respostas dele
        alunos[aluno]["questao_" .. tostring(i)] = resposta_atual
    end
end

-- ? Vamos percorrer cada aluno e suas respostas
for aluno, respostas in pairs(alunos) do
    -- ? E percorrer cada uma de suas respostas
    for questao, resposta in pairs(respostas) do
        if questao ~= "acertos" then
            -- ? Se a resposta for igual ao gabarito
            if resposta == gabarito[questao] then
                alunos[aluno]["acertos"] = alunos[aluno]["acertos"] + 1
            end
        end
    end

    acertos = alunos[aluno]["acertos"]
    nota = 10 * acertos / numero_de_questoes
    print(
        string.format(
            "O aluno %s obteve %d acertos dentre %d",
            aluno, acertos, numero_de_questoes
        )
        ..string.format(" questoes e ficou com a nota %.2f", nota)
    )

    if acertos > maior_acerto then
        maior_acerto = acertos
        aluno_com_maior_acerto = aluno
    end
    if acertos < menor_acerto then
        menor_acerto = acertos
        aluno_com_menor_acerto = aluno
    end

    media_da_turma = media_da_turma + nota
end

media_da_turma = media_da_turma / numero_de_alunos
print(
    string.format(
        "O aluno com o mais acertos eh %s, ", aluno_com_maior_acerto
    )
    ..string.format(
        "com %d acertos", maior_acerto
    )
    ..string.format(
        "\nO aluno com o menos acertos eh %s, ", aluno_com_menor_acerto
    )
    ..string.format(
        "com %d acertos", menor_acerto
    )
    ..string.format(
        "\nA media da turma eh %.2f", media_da_turma
    )
)

