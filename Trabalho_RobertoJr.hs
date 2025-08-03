module Main where

import System.Exit ( exitSuccess )
import Text.Read ( readMaybe )


type Tarefa = String


type ListaDeTarefas = [Tarefa]


main :: IO ()
main = do
    putStrLn "--- Bem-vindo ao Gerenciador de Tarefas! ---"
   
    loop []


loop :: ListaDeTarefas -> IO ()
loop tarefas = do
   
    putStrLn "\n--- MENU ---"
    putStrLn "1. Adicionar Tarefa"
    putStrLn "2. Remover Tarefa"
    putStrLn "3. Listar Tarefas"
    putStrLn "4. Sair"
    putStr "Escolha uma opção: "

    opcao <- getLine

    case opcao of
        "1" -> do
            novaLista <- adicionarTarefa tarefas
            loop novaLista

        "2" -> do
            novaLista <- removerTarefa tarefas
            loop novaLista

        "3" -> do
            exibirTarefas tarefas
            loop tarefas

        "4" -> do
            putStrLn "Saindo do programa. Até mais!"
            exitSuccess 

        _   -> do
            putStrLn "Opção inválida. Por favor, tente novamente."
            loop tarefas 



adicionarTarefa :: ListaDeTarefas -> IO ListaDeTarefas
adicionarTarefa tarefas = do
    putStr "Digite a descrição da nova tarefa: "
    descricao <- getLine
    let novaLista = tarefas ++ [descricao]
    putStrLn "\nTarefa adicionada com sucesso!"
    return novaLista


exibirTarefas :: ListaDeTarefas -> IO ()
exibirTarefas tarefas =
    if null tarefas
    then
        putStrLn "\nNenhuma tarefa na lista."
    else do
        putStrLn "\n--- Lista de Tarefas ---"
        imprimirListaNumerada 1 tarefas

imprimirListaNumerada :: Int -> ListaDeTarefas -> IO ()
imprimirListaNumerada _ [] = return ()
imprimirListaNumerada numero (primeiraTarefa : restoDaLista) = do
    putStrLn (show numero ++ ". " ++ primeiraTarefa)
    imprimirListaNumerada (numero + 1) restoDaLista

removerTarefa :: ListaDeTarefas -> IO ListaDeTarefas
removerTarefa tarefas =
    if null tarefas
    then do
        putStrLn "\nNenhuma tarefa para remover."
        return tarefas 
    else do
        putStrLn "\nQual tarefa você deseja remover?"
        exibirTarefas tarefas 
        putStr "Digite o número da tarefa: "
        input <- getLine


        case readMaybe input :: Maybe Int of
            Nothing -> do
                putStrLn "Entrada inválida. Por favor, digite um número."
                return tarefas 

            Just indice ->
                if indice > 0 && indice <= length tarefas
                then do
                    let novaLista = removerPorIndice (indice - 1) tarefas
                    putStrLn "\nTarefa removida com sucesso!"
                    return novaLista
                else do
                    putStrLn "Número da tarefa inválido."
                    return tarefas 


removerPorIndice :: Int -> [a] -> [a]
removerPorIndice _ [] = [] 
removerPorIndice n xs = take n xs ++ drop (n + 1) xs