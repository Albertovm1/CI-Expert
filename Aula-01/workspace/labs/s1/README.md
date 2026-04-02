## Repositorio dedicado a primeira aula da capacitação do CI-Expert na trilha de Design Verification

    Nesta primeira aula, o instrutor Gabriel apresentou uma ampla gama de conteúdos novos. Como eu ainda não tinha familiaridade com comandos Linux, Shell Script e Git, foi fundamental aprender e praticar esses conceitos em casa. Quanto ao fluxo de verificação, eu já possuía um conhecimento prévio, mas não tão aprofundado quanto o que estou adquirindo diariamente. Para consolidar esse aprendizado, elaborei um resumo da aula para consultas futuras.

## 1. Comandos linux

### Navegação e Pastas
    pwd --> Mostra o caminho completo (diretório) onde estás agora.

    ls --> Lista todos os ficheiros e pastas do local atual.

    cd --> Entra numa pasta ou navega entre diretórios (ex: cd .. volta atrás).

    mkdir --> Cria uma nova pasta de ficheiros.

### Ficheiros e Edição
    touch --> Cria um ficheiro novo e vazio (ex: touch script.sv).

    cp --> Copia um ficheiro ou pasta para outro local.

    mv --> Move um ficheiro ou altera o seu nome.

    cat --> Exibe o conteúdo de um ficheiro diretamente no terminal.

### Filtros e Atalhos
    echo --> Imprime um texto ou valor de variável no ecrã.

    grep --> Procura por uma palavra ou padrão dentro de ficheiros (ex: achar "ERROR").

    alias --> Cria um atalho personalizado para um comando longo.

    chmod +x --> Dá permissão para que um script possa ser executado.

## 2. Git

O Git é a ferramenta que gere as diferentes versões do teu código e permite o trabalho em equipa.

    git init --> Inicia um novo repositório Git local.

    git clone --> Faz uma cópia de um repositório remoto para o pc.

    git branch --> Cria ou gere as "ramificações" (versões paralelas do código).

    git checkout --> Alterna entre diferentes branches (ex: sair da main para a dev).

    git add --> Prepara os ficheiros alterados para serem guardados (staging).

    git commit -m --> Guarda as alterações no repositório local com uma nota explicativa.

    git push --> Envia os teus salvamentos locais para o servidor remoto.

    git pull --> Puxa e atualiza o código com o que a equipe envia.

## 3. Shell Script

    set --> Define uma variável.

    puts --> Escreve algo no terminal.

    expr --> Executa cálculos matemáticos.

## 4. fluxo de verificação

    DUT (Design Under Test): O hardware que estás a testar

    Testbench (TB): O código que gera estímulos para testar o DUT.

    VCS: O compilador/simulador que lê o SystemVerilog e gera o executável simv.

    Verdi: A ferramenta gráfica usada para "ver" os sinais e ondas (Debug).

    FSDB: O formato de ficheiro que guarda as ondas para serem lidas no Verdi.