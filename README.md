# Gerenciador de Tarefas em Haskell

Este projeto é um gerenciador de tarefas simples feito em Haskell, como atividade da disciplina **Paradigmas de Programação** no curso de Engenharia de Computação do IFMG – Campus Bambuí.

## Descrição

O programa funciona no terminal e permite:

- Adicionar tarefas  
- Listar tarefas  
- Remover tarefas  
- Sair do sistema  

Tudo é feito utilizando o **paradigma funcional**, com estruturas imutáveis e funções puras. As tarefas são armazenadas apenas em memória durante a execução.

## Como executar

1. Instale o GHC (Glasgow Haskell Compiler).  
2. Compile o arquivo e execute:

```bash
ghc Trabalho_RobertoJr.hs -o gerenciador
./gerenciador
```

## Estrutura do Código

- `main`: Inicia o programa  
- `loop`: Exibe o menu e processa as ações  
- `adicionarTarefa`: Adiciona uma nova tarefa  
- `exibirTarefas`: Mostra as tarefas com numeração  
- `removerTarefa`: Permite remover uma tarefa por número  
- `removerPorIndice`: Função auxiliar para remoção  

## Autor

Roberto de Morais Junior  
Engenharia de Computação - IFMG  
Agosto de 2025

---

# Task Manager in Haskell

This project is a simple task manager built in Haskell, developed as part of the **Programming Paradigms** course in the Computer Engineering program at IFMG – Campus Bambuí.

## Description

The program runs in the terminal and allows the user to:

- Add tasks  
- List tasks  
- Remove tasks  
- Exit the system  

It is implemented using the **functional programming paradigm**, with immutable structures and pure functions. Tasks are stored in memory during execution.

## How to Run

1. Make sure GHC (Glasgow Haskell Compiler) is installed.  
2. Compile and run:

```bash
ghc Trabalho_RobertoJr.hs -o task-manager
./task-manager
```

## Code Structure

- `main`: Starts the program  
- `loop`: Displays the menu and handles user actions  
- `adicionarTarefa`: Adds a new task  
- `exibirTarefas`: Shows the list of tasks  
- `removerTarefa`: Removes a task by number  
- `removerPorIndice`: Helper function for removal  

## Author

Roberto de Morais Junior  
Computer Engineering - IFMG  
August 2025
