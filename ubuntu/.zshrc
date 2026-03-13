# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  asdf
  zsh-syntax-highlighting
  fzf
  zsh-autosuggestions
  k
  web-search
  zsh-interactive-cd
  jump 
  bgnotify
  k
  extract
  z
  sudo
  httpie
  python
  docker
  lol
  pip
  pyenv
  redis-cli
 )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias gb="git branch -M main"
alias gst="git status"
alias gco="git checkout"
alias gbr="git branch"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gd="git diff"
alias gcl="git clone"
alias grb="git rebase"
alias gdv="git diff --staged"
alias glg="git log --oneline --graph --decorate"
alias gs="git status"
alias gstash="git stash"
alias gstashpop="git stash pop"
alias d="docker"
alias dc="docker-compose"
alias dcup="docker-compose up"
alias dcdown="docker-compose down"
alias dcbuild="docker-compose build"
alias python3="python3"
alias pip3="pip3"
alias p="python3"
alias py="python3"
alias venv="python3 -m venv"
alias run="python3"
alias tests="pytest"
alias logs="tail -f /var/log/syslog"
alias c="clear"
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias h="history"
alias lt="ls -lh"
alias l="ls -l"
alias la="ls -la"
alias tree="tree -C"

# Alias para facilitar navegação e manipulação de arquivos
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias z="mkdir"
alias l="ls -l"
alias la="ls -la"
alias lt="ls -lh"
alias ltr="ls -lh --color"
alias tree="tree -C"
alias h="history"
alias c="clear"
alias v="vim"
alias n="nano"

# Alias Git
alias gad="git add ."
alias gc="git commit -m"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gco="git checkout"
alias gb="git branch"
alias gbr="git branch"
alias gst="git status"
alias glg="git log --oneline --graph --decorate"
alias gcl="git clone"
alias grb="git rebase"
alias gd="git diff"
alias gdv="git diff --staged"
alias gstash="git stash"
alias gstashpop="git stash pop"
alias gcoff="git checkout --force"
alias gup="git pull --rebase"

# Alias Docker
alias d="docker"
alias dc="docker-compose"
alias dcup="docker-compose up -d --build"
alias dcdown="docker-compose down"
alias dcps="docker-compose ps"
alias dclogs="docker-compose logs -f"
alias dclean="docker system prune -f"
alias dvolclean="docker volume prune -f"

# Alias Python
alias py="python3"
alias pip="pip3"
alias venv="python3 -m venv"
alias run="python3"
alias tests="pytest"
alias pylint="python3 -m pylint"
alias flake="python3 -m flake8"

# Alias Node.js
alias npmstart="npm start"
alias npmtest="npm test"
alias npx="npx"

# Alias para AWS
alias awslogs="aws logs tail"
alias awsupdate="aws configure list"
alias s3upload="aws s3 cp"
alias ec2start="aws ec2 start-instances --instance-ids"
alias ec2stop="aws ec2 stop-instances --instance-ids"

# Alias Firebase
alias fbdeploy="firebase deploy --only hosting"
alias fbserve="firebase serve --only hosting"
alias fbauth="firebase auth:export users.json"


# ================================================
# FUNÇÕES
# ================================================

# Cria um diretório e entra nele
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Cria múltiplos diretórios e entra no último
mkdirs() {
    mkdir -p "$@" && cd "${!#}"
}

# Cria e entra em um diretório (versão compacta)
mcd() {
    mkdir -p "$1" && cd "$1"
}

# Volta para o diretório anterior
back() {
    cd -
}

# Volta N diretórios acima
up() {
    cd $(printf "../%.0s" $(seq 1 $1))
}

# Navega rapidamente para um diretório utilizando uma parte do nome (com autocompletar)
cdg() {
    local dir
    dir=$(fd -t d "$1" | fzf --preview 'ls -l {}' --preview-window=up:10%:wrap) && cd "$dir"
}

# Função para buscar e abrir arquivos rapidamente
find_open() {
    find . -type f -iname "$1" -exec xdg-open {} \;
}

# Função para fazer o speedtest de internet
speedtest() {
    curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
}

# Função para exibir uma piada
piadaruim() {
    curl https://icanhazdadjoke.com
}

# Função para buscar uma definição de dicionário
dict() {
    if [ "$3" ]; then
        curl "dict://dict.org/d:$1 $2 $3"
    elif [ "$2" ]; then
        curl "dict://dict.org/d:$1 $2"
    else
        curl "dict://dict.org/d:$1"
    fi
}

# Função para obter informações geográficas de um IP
iphj() {
    if [ "$1" ]; then
        curl "http://api.db-ip.com/v2/free/$1"
    else
        curl "http://api.db-ip.com/v2/free/$(myip)"
    fi
}

# Função para exibir o IP público
myip() {
    curl -s https://api.ipify.org
}

# Função para atualizar o sistema
ups() {
    sudo apt update && sudo apt upgrade -y
    sudo apt autoremove -y
    echo "Sistema atualizado e limpo!"
}

# Função para buscar arquivos
sfile() {
    find . -type f -iname "*$1*"
}

# Função para matar processos
matar() {
    pkill -f $1
    echo "Todos os processos contendo '$1' foram terminados."
}

# Função para fazer um commit rápido no Git
gpush() {
    if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1; then
        git add --all
        if git diff --staged --quiet; then
            echo "Nenhuma mudança para commitar."
        else
            if [ -z "$*" ]; then
                read -p "Insira uma mensagem de commit: " commit_message
                if [ -z "$commit_message" ]; then
                    echo "Commit cancelado devido à falta de mensagem."
                    return
                fi
            else
                commit_message="$*"
            fi
            git commit -m "$commit_message"
            git push
        fi
    else
        echo "Não está em um repositório Git."
    fi
}

# Função para extrair arquivos compactados
extract() {
    if [ -z "$1" ]; then
        echo "Uso: extract <arquivo>"
        return 1
    fi
    case $1 in
        *.tar.bz2)   tar xjf "$1"        ;;
        *.tar.gz)    tar xzf "$1"        ;;
        *.bz2)       bunzip2 "$1"        ;;
        *.rar)       unrar x "$1"        ;;
        *.gz)        gunzip "$1"         ;;
        *.tar)       tar xf "$1"         ;;
        *.tbz2)      tar xjf "$1"        ;;
        *.tgz)       tar xzf "$1"        ;;
        *.zip)       unzip "$1"          ;;
        *.Z)         uncompress "$1"     ;;
        *.7z)        7z x "$1"           ;;
        *.xz)        xz --decompress "$1"  ;;
        *.lzma)      unlzma "$1"           ;;
        *.cpio)      cpio -id < "$1"       ;;
        *.tar.xz)    tar xJf "$1"          ;;
        *.tar.lzma)  tar --lzma -xf "$1"   ;;
        *)           echo "'$1' não pode ser extraído via extract()" ;;
    esac
}

# Função para exibir logs do sistema
# Função para exibir logs do sistema
show_logs() {
    sudo journalctl -xe | tail -n $1
}


# Função para limpar cache do sistema
clean_cache() {
    sudo apt clean
    echo "Cache de pacotes limpo!"
}

# Função para conectar via SSH
connectssh() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Uso: connect_ssh <usuário> <host>"
        return 1
    fi
    ssh $1@$2
}

# Função para checar portas
checkport() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Uso: check_port <host> <porta>"
        return 1
    fi
    nc -zv $1 $2
}

# Função para instalar pacotes
instalar() {
    if [ $# -eq 0 ]; then
        echo "Por favor, forneça pelo menos um pacote para instalar."
    else
        sudo apt install "$@"
    fi
}

# Função para conectar ao NordVPN
vpnc() {
    nordvpn connect
}

# Função para desconectar do NordVPN
vpnd() {
    nordvpn disconnect
}

# Função para mostrar os aliases
showaliases() {
    alias
}

# Função para mostrar as funções definidas
showfunctions() {
    declare -f | grep -v "declare -f showaliases" | grep -v "declare -f showfunctions"
}

# ================================================
# Funções Git

# Puxa as últimas alterações do repositório remoto
git_pull() {
    git fetch origin && git merge origin/$(git symbolic-ref --short HEAD)
}

# Faz fetch das últimas alterações, mas sem fazer merge
git_fetch() {
    git fetch origin
}

# Faz rebase do branch atual em cima do main (ou outro branch de sua escolha)
git_rebase() {
    git fetch origin
    git rebase origin/$(git symbolic-ref --short HEAD)
}

# Faz merge de um branch específico no branch atual
git_merge() {
    git merge "$1"
}

# Reseta o repositório local para o último commit do remoto
git_reset_hard() {
    git fetch origin
    git reset --hard origin/$(git symbolic-ref --short HEAD)
}

# Lista todas as tags do repositório
git_tags() {
    git tag -l
}

# Cria um novo branch e faz checkout nele
git_checkout_new_branch() {
    git checkout -b "$1"
}

# Modifica o último commit (usado quando se esquece de adicionar algo ao commit)
git_amend() {
    git commit --amend --no-edit
}

# ================================================
# Funções de Programação

# Executa todos os testes com pytest (para projetos Python)
run_tests() {
    pytest
}

# Executa um container Docker (simplesmente fornecendo o nome da imagem)
run_docker_container() {
    docker run -it --rm "$1"
}

# Construa uma imagem Docker a partir de um Dockerfile
build_docker_image() {
    docker build -t "$1" .
}

# Limpa arquivos temporários de compilação (como binários e logs)
make_clean() {
    find . -type f -name "*.o" -exec rm -f {} \;
    find . -type f -name "*.log" -exec rm -f {} \;
}

# Cria e ativa um ambiente virtual Python
start_python_venv() {
    python3 -m venv venv
    source venv/bin/activate
}

# Formata o código automaticamente (usando black para Python ou prettier para JS)
auto_format() {
    if [ -f "requirements.txt" ]; then
        # Formata Python com black
        black .
    elif [ -f "package.json" ]; then
        # Formata JS/TS com prettier
        prettier --write .
    else
        echo "Formato não reconhecido!"
    fi
}

# Inicia um servidor local para um projeto Python (Flask/Django)
run_server() {
    if [ -f "manage.py" ]; then
        # Django
        python3 manage.py runserver
    elif [ -f "app.py" ]; then
        # Flask
        export FLASK_APP=app.py
        flask run
    else
        echo "Nenhum arquivo de servidor encontrado!"
    fi
}


mkcd() {
    if [ -z "$1" ]; then
        echo "Uso: mkcd <nome_do_diretorio>"
        return 1
    fi
    mkdir -p "$1" && cd "$1" && echo "Diretório '$1' criado e você entrou nele."
}

# Função para criar múltiplos diretórios e entrar no último
mkdirs() {
    if [ "$#" -eq 0 ]; then
        echo "Uso: mkdirs <dir1> <dir2> ... <dirN>"
        return 1
    fi
    mkdir -p "$@" && cd "${!#}" && echo "Diretórios criados e você entrou em '${!#}'."
}

# Função para voltar ao diretório anterior
back() {
    cd - && echo "Você voltou para o diretório anterior."
}

# Função para ir para um diretório acima
up() {
    if [ -z "$1" ]; then
        echo "Uso: up <número_de_niveis>"
        return 1
    fi
    cd $(printf "../%.0s" $(seq 1 $1)) && echo "Você subiu $1 diretórios."
}

# Função para buscar e abrir arquivos rapidamente
find_open() {
    if [ -z "$1" ]; then
        echo "Uso: find_open <nome_do_arquivo>"
        return 1
    fi
    find . -type f -iname "$1" -exec xdg-open {} \; && echo "Abrindo arquivo $1."
}

# Função para buscar arquivos com fzf (fuzzy search)
searchf() {
    if [ -z "$1" ]; then
        echo "Uso: searchf <termo>"
        return 1
    fi
    fd -t f "$1" | fzf --preview 'cat {}' --preview-window=up:10%:wrap && echo "Arquivo encontrado."
}

# Função para verificar se o Docker está rodando
docker_status() {
    if ! docker info > /dev/null 2>&1; then
        echo "Docker não está rodando. Iniciando..."
        sudo systemctl start docker
    else
        echo "Docker está em funcionamento."
    fi
}

# Função para rodar um arquivo Node.js
runjs() {
    if [ -z "$1" ]; then
        echo "Uso: runjs <arquivo>"
        return 1
    fi
    node "$1" && echo "Arquivo Node.js '$1' executado."
}

# Função para rodar um arquivo Go
rungo() {
    if [ -z "$1" ]; then
        echo "Uso: rungo <arquivo>"
        return 1
    fi
    go run "$1" && echo "Arquivo Go '$1' executado."
}

# Função para rodar um servidor Python
python_server() {
    if [ -z "$1" ]; then
        echo "Uso: python_server <porta>"
        return 1
    fi
    python3 -m http.server "$1" && echo "Servidor Python rodando na porta $1."
}

# Função para rodar um servidor Node.js
node_server() {
    if [ -z "$1" ]; then
        echo "Uso: node_server <porta>"
        return 1
    fi
    PORT=$1 npm start && echo "Servidor Node.js rodando na porta $1."
}

# Função para fazer deploy no Firebase
firebase_deploy() {
    if [ -z "$1" ]; then
        echo "Uso: firebase_deploy <app>"
        return 1
    fi
    firebase deploy --only hosting --project "$1" && echo "App '$1' deployado no Firebase."
}

# Função para criar um bucket S3
aws_s3_create_bucket() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Uso: aws_s3_create_bucket <nome_do_bucket> <região>"
        return 1
    fi
    aws s3 mb "s3://$1" --region "$2" && echo "Bucket S3 '$1' criado na região '$2'."
}

# Função para listar buckets S3
aws_s3_list() {
    aws s3 ls && echo "Buckets S3 listados."
}

# Função para fazer upload de arquivos para o S3
aws_s3_upload() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Uso: aws_s3_upload <arquivo> <bucket>"
        return 1
    fi
    aws s3 cp "$1" "s3://$2/" && echo "Arquivo '$1' enviado para '$2'."
}

# Função para listar instâncias EC2
aws_ec2_list() {
    aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId' --output text && echo "Instâncias EC2 listadas."
}

# Função para iniciar uma instância EC2
aws_ec2_start() {
    if [ -z "$1" ]; then
        echo "Uso: aws_ec2_start <id_da_instancia>"
        return 1
    fi
    aws ec2 start-instances --instance-ids "$1" && echo "Instância EC2 '$1' iniciada."
}

# Função para parar uma instância EC2
aws_ec2_stop() {
    if [ -z "$1" ]; then
        echo "Uso: aws_ec2_stop <id_da_instancia>"
        return 1
    fi
    aws ec2 stop-instances --instance-ids "$1" && echo "Instância EC2 '$1' parada."
}

# ================================================
# Funções para Exibir Aliases e Funções
# ================================================

# Exibir todos os aliases
showaliases() {
    alias
}

# Exibir todas as funções definidas
showfunctions() {
    declare -f
}

# ================================================
# FUNÇÕES ADICIONAIS
# ================================================

# Função para rodar um servidor Go (Golang)
go_server() {
    if [ -z "$1" ]; then
        echo "Uso: go_server <porta>"
        return 1
    fi
    go run main.go "$1" && echo "Servidor Go rodando na porta $1."
}

# Função para rodar um servidor Java (com Maven)
java_server() {
    if [ -z "$1" ]; then
        echo "Uso: java_server <porta>"
        return 1
    fi
    mvn spring-boot:run -Dserver.port="$1" && echo "Servidor Java rodando na porta $1."
}

# Função para instalar pacotes do sistema
install_sys_packages() {
    if [ -z "$1" ]; then
        echo "Uso: install_sys_packages <pacote1> <pacote2> ..."
        return 1
    fi
    sudo apt install -y "$@" && echo "Pacotes instalados: $*"
}

# Função para buscar todos os containers em execução no Docker
docker_running() {
    docker ps --format "table {{.Names}}\t{{.Status}}" && echo "Containers Docker em execução."
}

# Função para rodar múltiplos containers Docker usando docker-compose (atualização)
docker_compose_up() {
    if [ -z "$1" ]; then
        echo "Uso: docker_compose_up <nome_do_serviço>"
        return 1
    fi
    docker-compose up "$1" -d && echo "Serviço '$1' iniciado com docker-compose."
}

# Função para limpar imagens e volumes antigos do Docker
docker_cleanup() {
    docker system prune -af --volumes && echo "Imagens e volumes antigos removidos."
}

# Função para criar um bucket S3 e configurar políticas
aws_s3_create_with_policy() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Uso: aws_s3_create_with_policy <bucket_name> <region>"
        return 1
    fi
    aws s3 mb "s3://$1" --region "$2" && \
    aws s3api put-bucket-policy --bucket "$1" --policy file://policy.json && \
    echo "Bucket S3 '$1' criado com política aplicada."
}

# Função para rodar um servidor React (usando o Create React App)
react_server() {
    if [ -z "$1" ]; then
        echo "Uso: react_server <porta>"
        return 1
    fi
    npm start -- --port "$1" && echo "Servidor React rodando na porta $1."
}

# Função para rodar um servidor Flask (Python)
flask_server() {
    if [ -z "$1" ]; then
        echo "Uso: flask_server <porta>"
        return 1
    fi
    FLASK_APP=app.py flask run --port="$1" && echo "Servidor Flask rodando na porta $1."
}

# Função para gerar e exibir uma chave SSH
generate_ssh_key() {
    if [ -z "$1" ]; then
        echo "Uso: generate_ssh_key <nome_da_chave>"
        return 1
    fi
    ssh-keygen -t rsa -b 4096 -f "$1" -C "$(whoami)@$(hostname)" && \
    echo "Chave SSH gerada em $1."
}

# Função para listar os logs do AWS EC2
aws_ec2_logs() {
    if [ -z "$1" ]; then
        echo "Uso: aws_ec2_logs <id_da_instancia>"
        return 1
    fi
    aws logs tail "/aws/ec2/$1" && echo "Logs da instância EC2 '$1' listados."
}

# Função para rodar um container Docker e rodar um comando dentro dele
docker_run_command() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Uso: docker_run_command <nome_do_container> <comando>"
        return 1
    fi
    docker exec -it "$1" "$2" && echo "Comando '$2' executado no container '$1'."
}

# Função para fazer deploy de um app React com Firebase Hosting
firebase_react_deploy() {
    if [ -z "$1" ]; then
        echo "Uso: firebase_react_deploy <diretório_build>"
        return 1
    fi
    firebase deploy --only hosting --project my-project-id --public "$1" && echo "Deploy do app React realizado."
}

# Função para verificar status dos serviços AWS
aws_status() {
    aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId' --output text && \
    echo "Instâncias EC2 listadas com sucesso."
}

# Função para adicionar uma chave SSH ao agente SSH
ssh_add_key() {
    if [ -z "$1" ]; then
        echo "Uso: ssh_add_key <caminho_da_chave_ssh>"
        return 1
    fi
    ssh-add "$1" && echo "Chave SSH '$1' adicionada ao agente."
}

# Função para rodar o projeto Go em ambiente Docker
docker_run_go() {
    if [ -z "$1" ]; then
        echo "Uso: docker_run_go <nome_da_imagem>"
        return 1
    fi
    docker run --rm -v $(pwd):/app -w /app "$1" go run main.go && \
    echo "Projeto Go rodando no Docker com a imagem '$1'."
}

# Função para exportar variáveis de ambiente para o Node.js
export_env_node() {
    if [ -z "$1" ]; then
        echo "Uso: export_env_node <variáveis_de_ambiente>"
        return 1
    fi
    export "$1" && echo "Variáveis de ambiente exportadas: $1"
}

# Função para gerar e adicionar um novo endpoint API no Firebase
firebase_add_endpoint() {
    if [ -z "$1" ]; then
        echo "Uso: firebase_add_endpoint <nome_do_endpoint>"
        return 1
    fi
    firebase functions:config:set "$1" && echo "Endpoint '$1' adicionado no Firebase."
}

# Função para rodar múltiplos containers Docker com múltiplos serviços (docker-compose)
docker_compose_up_all() {
    docker-compose up -d && echo "Todos os serviços no docker-compose estão rodando."
}

# Função para verificar se a máquina está rodando com Docker
docker_check() {
    if ! docker info &>/dev/null; then
        echo "Docker não está rodando. Iniciando..."
        sudo systemctl start docker
    else
        echo "Docker está rodando corretamente."
    fi
}

# Função para instalar o AWS CLI
install_aws_cli() {
    echo "Instalando AWS CLI..."
    sudo apt-get install awscli -y && echo "AWS CLI instalado com sucesso."
}

# Função para testar a conexão com a AWS
test_aws_connection() {
    aws sts get-caller-identity && echo "Conexão com a AWS bem-sucedida!"
}

# Função para atualizar todos os pacotes do sistema
update_system() {
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && \
    echo "Sistema atualizado e limpo."
}

# Função para visualizar todos os containers Docker
docker_ps() {
    docker ps -a && echo "Exibindo todos os containers Docker."
}
