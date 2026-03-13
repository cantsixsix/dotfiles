#!/bin/bash
#
# Website:       https://ederlan.tech
# Autor:         Ederlan Brito
#
# ------------------------------------------------------------------------ #
# Script para instalar extensões do Visual Studio Code
# Com animações e visual mais bonito!
# ------------------------------------------------------------------------ #

# Cores para formatação
GREEN="\e[32m"
BLUE="\e[34m"
CYAN="\e[36m"
YELLOW="\e[33m"
RED="\e[31m"
BOLD="\e[1m"
RESET="\e[0m"

# Exibe uma barra de progresso
show_progress() {
    local duration=$1
    local progress=0
    local bar=""

    while [ $progress -le 100 ]; do
        printf "\r${CYAN}Instalando... [%3d%%] [%-20s]${RESET}" "$progress" "$bar"
        sleep $((duration / 100))
        bar="${bar}#"
        progress=$((progress + 5))
    done
    printf "\n"
}

# Verifica se a CLI do VS Code está instalada
if ! command -v code &> /dev/null; then
    echo -e "${RED}A CLI do VS Code ('code') não está instalada ou configurada no PATH.${RESET}"
    echo -e "${YELLOW}Consulte: https://code.visualstudio.com/docs/editor/command-line para configurá-la.${RESET}"
    exit 1
fi

# Lista de extensões para instalar
EXTENSIONS=(
    "ms-python.python:Python Support"
    "ms-vscode.cpptools:C/C++ Tools"
    "esbenp.prettier-vscode:Prettier Formatter"
    
    "ritwickdey.LiveServer:Live Server for Web Development"
    "VisualStudioExptTeam.vscodeintellicode:IntelliCode AI Suggestions"
    "dbaeumer.vscode-eslint:ESLint"
    "eamodio.gitlens:GitLens Git Insights"
    "ms-vscode.cpptools-extension-pack:C++ Extension Pack"
    "ecmel.vscode-html-css:HTML & CSS IntelliSense"
    "formulahendry.auto-rename-tag:Auto Rename Tag"
    "redhat.vscode-yaml:YAML Support"
    "xabikos.JavaScriptSnippets:JavaScript Snippets"
    "christian-kohler.path-intellisense:Path IntelliSense"
    "formulahendry.auto-close-tag:Auto Close Tag"
    "golang.Go:Go Language Support"
    "jeff-hykin.better-cpp-syntax:Better C++ Syntax"
    "dsznajder.es7-react-js-snippets:React & ES7 Snippets"
    "streetsidesoftware.code-spell-checker:Code Spell Checker"
    "abusaidm.html-snippets:HTML Snippets"
    "EditorConfig.EditorConfig:EditorConfig Support"
    "yzhang.markdown-all-in-one:Markdown Tools"
    "christian-kohler.npm-intellisense:NPM IntelliSense"
    "Zignd.html-css-class-completion:HTML/CSS Class Completion"
    "eg2.vscode-npm-script:NPM Script Runner"
    "naumovs.color-highlight:Color Highlight"
    "bradlc.vscode-tailwindcss:Tailwind CSS IntelliSense"
    "mikestead.dotenv:Dotenv File Support"
    "pranaygp.vscode-css-peek:CSS Peek"
    "austin.code-gnu-global:GNU Global Tools"
    "alefragnani.project-manager:Project Manager"
    "humao.rest-client:REST Client"
    "burkeholland.simple-react-snippets:React Snippets"
    "usernamehw.errorlens:Error Lens"
    "steoates.autoimport:Auto Import"
    "wix.vscode-import-cost:Import Cost Analyzer"
    "danielpinto8zz6.c-cpp-compile-run:C/C++ Compile and Run"
    "ms-vscode.vscode-typescript-next:TypeScript Next"
    "sidthesloth.html5-boilerplate:HTML5 Boilerplate Snippets"
    "hbenl.vscode-test-explorer:Test Explorer"
    "rust-lang.rust-analyzer:Rust Tools"
    "Orta.vscode-jest:Jest Test Integration"
    "GraphQL.vscode-graphql:GraphQL Tools"
    "mgmcdermott.vscode-language-babel:Babel Language Support"
    "leizongmin.node-module-intellisense:Node Module IntelliSense"
    "Prisma.prisma:Prisma Tools"
    "GraphQL.vscode-graphql-syntax:GraphQL Syntax Highlight"
    "svelte.svelte-vscode:Svelte Language Tools"
    "infeng.vscode-react-typescript:React TypeScript Tools"
    "SimonSiefke.svg-preview:SVG Preview"
    "miguelsolorio.symbols:Symbols Outline"
)

# Título visual
clear
echo -e "${BOLD}${BLUE}"
echo "######################################################"
echo "#                                                    #"
echo "#         Instalador de Extensões do VS Code         #"
echo "#                                                    #"
echo "######################################################"
echo -e "${RESET}\n"

# Instala cada extensão da lista
for ITEM in "${EXTENSIONS[@]}"; do
    EXTENSION="${ITEM%%:*}"  # Nome da extensão
    DESCRIPTION="${ITEM##*:}"  # Descrição da extensão

    echo -e "${YELLOW}➡️  Instalando: ${BOLD}${DESCRIPTION}${RESET} (${CYAN}${EXTENSION}${RESET})"
    show_progress 1  # Barra de progresso

    if code --install-extension "$EXTENSION" &> /dev/null; then
        echo -e "✅ ${GREEN}Sucesso:${RESET} ${DESCRIPTION} foi instalada.\n"
    else
        echo -e "❌ ${RED}Erro:${RESET} Falha ao instalar ${DESCRIPTION}.\n"
    fi
    sleep 0.5
done

# Finalização
echo -e "${BOLD}${GREEN}Todas as extensões foram processadas!${RESET}"
echo -e "${CYAN}Bom trabalho! Seu ambiente VS Code está pronto para uso.${RESET}\n"

