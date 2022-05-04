import Foundation
import AppKit

//MARK: DADOS

let colors = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

let dicionario = [0: "Amarelo", 1: "Amarelo Alaranjado", 2: "Laranja", 3: "Vermelho Alaranjado", 4: "Vermelho", 5: "Vermelho Arroxeado", 6: "Violeta", 7: "Azul Arroxeado", 8: "Azul", 9: "Azul Esverdeado", 10: "Verde", 11: "Amarelo Esverdeado"]

let listaCor = ["Amarelo", "Amarelo Alaranjado", "Laranja", "Vermelho Alaranjado", "Vermelho", "Vermelho Arroxeado", "Violeta", "Azul Arroxeado", "Azul", "Azul Esverdeado", "Verde", "Amarelo Esverdeado"]

func escolhaCor () -> Int {
    print("\n👨‍🎨 Escolhe uma cor pra gente colorir.")
    let respostaDoUsuario = corValida()
    
    return respostaDoUsuario
    
}

// MARK: BOAS VINDAS

print ("""
👋 Olá! Seja bem-vinde ao
 ----------------------
|   Rainbow Match! 🌈  |
 ----------------------
""")


testaNome()


while true {
    // MARK: MENU PRINCIPAL
    let respostaEstilo = menu()
    
    // MARK: OUSADO
    if respostaEstilo == 1 {
        criativo()
    }

    // MARK: DIVERTIDO
    else if Int(respostaEstilo) == 2 {
        divertivo()
    }

    // MARK: MONOCROMATICO
    else if Int(respostaEstilo) == 3 {
        classico()
    }

    // MARK: NA PASSARELA
    else if Int(respostaEstilo) == 4 {
        naPassarela()
    }
    
}


        
