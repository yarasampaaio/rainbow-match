
import Foundation

//MARK: Conferindo o nome
func coletaNomeUsuario () -> String? {
    let nomeUsuario = readLine()
    return nomeUsuario
}

func comprimenta(nome: String) {
    print("\nOlá, \(nome)! Tudo bem? Bora colorir teu dia? 🌈\n")
}

func testaNome() {
    print("Digite seu nome: ")
    var usuarioNome = coletaNomeUsuario()
    
    while nomeValido(nome: usuarioNome) == false {
        print("Digite um nome válido: ")
        usuarioNome = coletaNomeUsuario()
    }
}
// Veja se o que foi digitado é algo nulo ou tb é nada
func nomeValido (nome: String?) -> Bool {
    if nome != nil && nome != "" {
        return true
    }
    return false
}

//MARK: Conferindo o estilo
func numeroValido() -> Int {
    var respostaUsuario = readLine()
    var finalNumber : Int?
    
    while nomeValido(nome: respostaUsuario) == false {
        print("Resposta inválida! Digite um número válido: ")
        respostaUsuario = readLine()
    }
    
    finalNumber = Int(respostaUsuario!)
    
    while finalNumber == nil || finalNumber! < 1 || finalNumber! > 5 {
        print("⚠️ Opa! Digite um número de estilo válido.")
        respostaUsuario = readLine()
        
        finalNumber = Int(respostaUsuario!)
    }
    
    return finalNumber!


}


//MARK: Conferindo a cor
func corValida() -> Int {
    var corDoUsuario = readLine()
    var finalNumberCor : Int?
    
    while nomeValido(nome: corDoUsuario) == false {
        print("⚠️ Resposta inválida! Digite um número válido: ")
        corDoUsuario = readLine()
    }
    
    finalNumberCor = Int(corDoUsuario!)
    
    while finalNumberCor == nil || finalNumberCor! < 0 || finalNumberCor! > 11 {
        print("⚠️ Digite um número válido! ")
        corDoUsuario = readLine()
        
        finalNumberCor = Int(corDoUsuario!)
    }
    
    return finalNumberCor!

}


//MARK: Conferindo o feedback
func feedbackValido() -> Int {
    var feedbackDoUsuario = readLine()
    var finalNumberCor : Int?
    
    while nomeValido(nome: feedbackDoUsuario) == false {
        print("⚠️ Resposta inválida! Digite um número válido: ")
        feedbackDoUsuario = readLine()
    }
    
    finalNumberCor = Int(feedbackDoUsuario!)
    
    while finalNumberCor == nil || finalNumberCor! < 0 || finalNumberCor! > 2 {
        print("⚠️ Digite um número válido! ")
        feedbackDoUsuario = readLine()
        
        finalNumberCor = Int(feedbackDoUsuario!)
    }
    
    if finalNumberCor! == 1 {
        print("🎉 Que bom! Volta logo, hein?!👋")
        exit(0)
    }
    
    return finalNumberCor!

}
