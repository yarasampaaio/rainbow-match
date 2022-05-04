
import Foundation

// MARK: MENU PRINCIPAL
func menu () -> Int {
    print("🤔 Pra começar, me diz qual teu mood de hoje, assim eu posso te ajudar com base em como você quer se vestir.\n")
    print ("1️⃣ - O meu lema é ousadia e alegria.\n2️⃣ - Na vibe divertita e fashionista. \n3️⃣ - Quero usar e abusar de uma cor, mas sem sair de moda.\n4️⃣ - Quero chamar atenção tal e qual as modelos de vitrine e passarela.\n5️⃣ - Sair do programa.\n")
    print ("Digite o número do seu estilo.")

    var estilo = numeroValido()
    
    while estilo > 5 || estilo < 1 {
        print("⚠️ Opa! Digite um número de estilo válido.")
        estilo = Int(readLine()!)!
    }
    if estilo == 5 {
        exit(0)
    }
    return estilo
}

// MARK: FEEDBACK
    func feedback () {
        print("🤷‍♀️ Eae, gostou disso?")
        print("1️⃣ - Sim, amei!\n2️⃣ - Não, quero tentar outro estilo.\n")
    //  Utilizei esse underline porque nao vou usar essa let novamente.
        let _ = feedbackValido()
}
