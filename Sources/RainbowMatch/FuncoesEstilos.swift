

import Foundation

func criativo () {
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
        print("🗣 Muito bem! Você escolheu a cor 👉 \(dicionario[valorDoUsuario]!). Para um visual mais ousado, você poderia optar por uma outra peça na cor  📍\(dicionario[indiceComplementar]!), utilizando a harmonia de cores complementares.\n")
        print ("""
        💡DICA: Se você ainda tem medo, comece aos poucos, aproveitando para combinar os acessórios e pequenos detalhes.\n
        """)
        feedback()
    }

func divertivo () {
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

func classico () {
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

func naPassarela () {
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
