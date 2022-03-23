import Foundation
import AppKit

//MARK: DADOS

let colors = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

let dicionario = [0: "Amarelo", 1: "Amarelo Alanjado", 2: "Laranja", 3: "Vermelho Alaranjado", 4: "Vermelho", 5: "Vermelho Arroxeado", 6: "Violeta", 7: "Azul Arroxeado", 8: "Azul", 9: "Azul Esverdeado", 10: "Verde", 11: "Amarelo Esverdeado"]

let listaCor = ["Amarelo", "Amarelo Alanjado", "Laranja", "Vermelho Alaranjado", "Vermelho", "Vermelho Arroxeado", "Violeta", "Azul Arroxeado", "Azul", "Azul Esverdeado", "Verde", "Amarelo Esverdeado"]

// MARK: BOAS VINDAS

print ("""
👋 Olá! Seja bem-vinde ao
 ----------------------
|   Rainbow Match! 🌈  |
 ----------------------
""")
print ("Digite seu nome.")

var nome = readLine()
print ("\nOlá, \(nome!)! Tudo bem? Bora colorir teu dia? 🌈\n")

while true {
    // MARK: MENU PRINCIPAL

    print("🤔 Pra começar, me diz qual teu mood de hoje, assim eu posso te ajudar com base em como você quer se vestir.\n")
    print ("1️⃣ - O meu lema é ousadia e alegria.\n2️⃣ - Na vibe divertita e fashionista. \n3️⃣ - Quero usar e abusar de uma cor, mas sem sair de moda.\n4️⃣ - Quero chamar atenção tal e qual as modelos de vitrine e passarela.\n5️⃣ - Sair do programa.\n")
    print ("Digite o número do seu estilo.")

    var estilo = Int(readLine()!)!
    while estilo > 5 {
        print("⚠️ Opa! Digite um número de estilo válido.")
        estilo = Int(readLine()!)!
    }
    if estilo == 5 {
        exit(0)
    }
   
    // MARK: OUSADO
   
    if estilo == 1 {
        print("""
         --------------
        | 😜 CRIATIVO  |
         --------------
        """)
        print ("\n📌 Esse mix inusitado de cores traz originalidade e dinamismo para o look.\n")
        print ("🎨 Aí vai nossa lista de cores:\n")
        for (indice, cor) in listaCor.enumerated() {
            print(indice, cor)
        }
        let valorDoUsuario = escolhaCor()
        let indiceComplementar = complementar(for: valorDoUsuario)!
        print("🗣 Muito bemCca Você escolheu a cor 👉 \(dicionario[valorDoUsuario]!). Para um visual mais ousado, você poderia optar por uma outra peça na cor  📍\(dicionario[indiceComplementar]!), utilizando a harmonia de cores complementares.\n")
        print ("""
        💡DICA: Se você ainda tem medo, comece aos poucos, aproveitando para combinar os acessórios e pequenos detalhes.\n
        """)
        feedback()
    }

    // MARK: DIVERTIDO

    if Int(estilo) == 2 {
        print("""
         ---------------
        | 🥳 DIVERTIDO  |
         ---------------
        """)
        print ("\n📌 Perfeito! A harmonia de cores análogas é suave e refinada, utilizando cores vizinhas. Vou sugerir 2 cores que contrastam com a cor escolhida.\n")
        print ("🎨 Aí vai nossa lista de cores:\n")
        for (indice, cor) in listaCor.enumerated() {
            print(indice, cor)
        }
        let valorDoUsuario = escolhaCor()
        let indiceAnalogaAnt = analogaAntes(for: valorDoUsuario)!
        let indiceAnalogaPost = analogaDepois(for: valorDoUsuario)!
        print("🗣 Muito bem! Você escolheu a cor 👉 \(dicionario[valorDoUsuario]!). Para um look com um toque divertido e fashionista, combine com 📍\(dicionario[indiceAnalogaAnt]!) e/ ou 📍\(dicionario[indiceAnalogaPost]!), harmonizando com umas dessas cores ou as 3 juntas.\n")
        print ("""
        💡DICA: Aposte em looks com sobreposição e acessórios coloridos.\n
        """)
        feedback()
    }

    // MARK: MONOCROMATICO

    if Int(estilo) == 3 {
        print("""
         -------------
        | 👠 CLÁSSICO |
         -------------
        """)

        print ("📌 Muito bem! O queridinho 'ton sur ton' é a a harmonia mais popular e à prova de erro. Então bora lá!\n")
        print ("🎨 Aí vai nossa lista de cores:\n")
        for (indice, cor) in listaCor.enumerated() {
            print(indice, cor)
        }
        let _ = escolhaCor()
            print ("🗣 Invista nas variações de tonalidade dessa mesma cor, fazendo uma combinação monocromática. Vai deixar seu visual fashion e elegante.\n")
            print ("""
        💡DICA: Vale apostar em tecidos com texturas bem ricas, para não deixar o look monótono.\n
        """)
        feedback()
    }

    // MARK: NA PASSARELA

    if Int(estilo) == 4 {
        print("""
         -----------------
        | 💃 NA PASSARELA |
         -----------------
        """)
        print ("\n📌 Claro que você pode fazer as composições das vitrines! Para isso, vou sugerir 2 cores que, juntas, harmonizam com a cor escolhida.\n")
        print ("🎨 Aí vai nossa lista de cores:\n")
        for (indice, cor) in listaCor.enumerated() {
            print(indice, cor)
        }
        let valorDoUsuario = escolhaCor()
        let indiceTriadeAnt = triadeAnterior(for: valorDoUsuario)!
        let indiceTriadePost = triadePosterior(for: valorDoUsuario)!
        print("🗣 Muito bem! Você escolheu a cor 👉 \(dicionario[valorDoUsuario]!). Para um um look com um toque vibrante, ousado e informal, combine com as cores 📍\(dicionario[indiceTriadeAnt]!) e 📍\(dicionario[indiceTriadePost]!).\n")
        print ("""
        💡DICA: Escolha uma cor para ser usada como principal e as restantes para os detalhes.\n
        """)
        feedback()
    }
    
}

    func feedback () {
        print("🤷‍♀️ Eae, gostou disso?")
        print("1️⃣ - Sim, amei!\n2️⃣ - Não, quero tentar outro estilo.\n")
        let respostaFeedback = readLine()!
        if Int(respostaFeedback)! == 1{
            print("🎉 Que bom! Volta logo, hein?!👋")
            exit(0)
    }
    
}
