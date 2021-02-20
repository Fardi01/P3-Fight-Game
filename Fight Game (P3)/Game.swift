//
//  Game.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 19/01/2021.
//


import Foundation

// MARK: - let's play !-

class Game {
    
    // ❖ J'utilise un tableau contenant 2 players pour pouvoir switché entre les deux joueurs !
    var players = [Player(), Player()]
    
    // ❖ Le nombre de tour de boucle du combat entre les deux joueur (sera incrementé) !
    var gameRound: Int = 0
    
    // ❖ Les joueurs maximum qui doivent jouer !
    let numberOfPlayers = 2
    
    // ❖ Les personnages mximum de chaque équipe !
    let numberOfCharacters = 3
    
    // ❖ L'index concernant le joueur actuel dans le tableau (sera incrémenté) !
    var currentPlayerIndex = 0
    
    // ❖ Un tableau contenant les noms des characters qui seront input par le joueur (Permet de filtré les noms) !
    var charactersName = [String]()
    

//MARK: - 🧾 Welcome to the game's message !
        
// ⛳️ Message générique, permet de souhaiter la bienvenue dans le jeu !
    func start(){
        print("🛡 Bienvenue dans -🛡 War Of Throne ⚔️\n"
        + "🔔 Pour commencer le jeu, inscrivez votre nom 📝\n")
        
        }
    
// ⛳️ Une méthode qui permet de passer d'un player à l'autre rapidement !
    func nextPlayer() {
        if (currentPlayerIndex == 0) { // Si l'index est égale à 0,
            currentPlayerIndex = 1 // Alors on passe à l'index 2
        } else {
            currentPlayerIndex = 0 // Si non on reviens à l'index 0
        }
    }


//MARK: - 🙋🏼‍♂️ Add Players ! -- Select the two players and name them!

// ⛳️ Une méthode qui permets de créer 2 joueurs et de donner un nom à chacun !
    func createPlayers(){
        for i in 0..<numberOfPlayers{ // Je boucle pour poser la question 2 fois
            print("Joueur \(i+1), quel est ton nom ? 🙋🏻‍♂️")
            
            if let name = readLine(){ // Je donne le champs pour saisir les noms de chacun
                players[currentPlayerIndex].name = name // On attribue le nom à chaque joueur !
            }
        nextPlayer() // J'incrémente avec la méthode "nextPlayer" pour passer au joueur suivant !
        }
        print("\nHi, 👋 Bonjour \(players[0].name) 🙋🏼‍♂️ - 👋 Bonjour \(players[1].name) 🙋🏻‍♂️")
    }
    
    
//MARK: - 👨🏻‍✈️ Add Characters ! Each player selects his characters to create his team.

// ⛳️ ✳️ Cette méthode générique permet de demander aux joueur de selectionne ses personnages et leur donne un nom !
    func selectCharacter(){
        
        // Permettent de donner les indication à l'utilisateur pour selectionner ses 3 personnages!
            print("\nSuivez les instructions suivantes pour choisir vos personnages !"
            + "\nTapez 1️⃣. Pour choisir un Sniper 🎯 "
            + "\nTapez 2️⃣. Pour choisir un Medecin ⛑"
            + "\nTapez 3️⃣. Pour choisir un Soldat 💥"
            + "\nTapez 4️⃣. Pour choisir un Capitaine 👨🏻‍✈️ "
            + "\nTapez 5️⃣. Pour choisir un Soutien 🪖 ")
        
        for player in players{ //🎗 Pour chaque joueur dans la liste,
            
            print("\n\n🙋🏼‍♂️ \(player.name), à toi de selectionner tes 3 personnages pour composer ton équipe !")
            
            while player.team.count < numberOfCharacters{ // 🎗 je boucle Tant que le nombre de personnage par équipe est inferieur à 3
            
                print("\n🔔 Choisis ton personnage n°\(player.team.count + 1) dans la liste ci dessus :")
            
                if let choices = readLine() {
                    
                    switch choices {
                
                    case "1":
                        let newMedic = Medic()
                        player.team.append(newMedic)
                        inputName(characters: newMedic)
                    
                    case "2":
                        let newSniper = Sniper()
                        player.team.append(newSniper)
                        inputName(characters: newSniper)
                    
                    case "3":
                        let newAssaultSoldier = AssaultSoldier()
                        player.team.append(newAssaultSoldier)
                        inputName(characters: newAssaultSoldier)
                    
                    case "4":
                        let newCaptain = Captain()
                        player.team.append(newCaptain)
                        inputName(characters: newCaptain)
                        
                    case "5":
                        let newSupport = Support()
                        player.team.append(newSupport)
                        inputName(characters: newSupport)
   
                    default:
                        print("❌ Tu dois selectionner 3 personnages parmi la liste !")
                        selectCharacter() // On recommence l'action !
                    }
                }
            }
        }
    }
    
    
    
// ⛳️ ✳️ Cette méthode va demander d'attribuer un nom à chaque personnage et aussi éviter les doublons des noms !
    func inputName(characters: Character){
        print("👤 Donne un nom à ton personnage : ")
            
        if let name = readLine(){
            
            if charactersName.contains(name){ //🎗 Si le tableau 'CharcatersName' contien 2 fois le même nom
                print("❌ Ce nom existe déjà, tu dois donner un autre nom à ton personnage !") //🎗 j'affiche le message !
                inputName(characters: characters) //🎗 et on recommence l'action tant que le nom n'est pas diffrent !
            } else {
                charactersName.append(name) //🎗 Si c'est ok, on stock le nom dans le tableau et on passe au suivant !
                characters.name = name //🎗 et le nom est donnée ensuite au personnage choisi !
            }
        }
    }
    
    
    
// ⛳️ ✳️ Cette méthode permet d'appler la méthode selectCharacters et demander au joueur de créer que 3 perso !
    func playerSelectYourCharacter(){
        
        for player in players{ // 🎗 Je parcours le tableau 'Players', pour chacun des joueur,
            
            if player.team.count < numberOfCharacters { // 🎗 si les personnages par équipe sont moins de trois,
                
            selectCharacter() // 🎗Le joueur rajoute des personnages dans son équipe, jusqu'a arrivé à trois !
            }
        }
    }
    
    
// ⛳️ La méthode affiche que les équipes sont completes et que le combat peut commencer !
    func teamsAreCompleted(){
        if players[0].team.count == numberOfCharacters && players[1].team.count == numberOfCharacters {
        print("\n✅ Les équipes sont completes, 🎆 le combat peut commencer ⚔️ !")
        } else {
            print("❌ Vous devez avoir chacun 3 personnages dans vos équipe !")
            selectCharacter()
        }
    }
    
    
    
// MARK: - 🎮 Fight section 🤼 !

// ⛳️ La méthode boucle pour permettre aux joueurs de jouer jusqu'a qu'une équipe gagne la partie.
    func pickFight(){
        
        while (players[currentPlayerIndex].team[0].lives != 0) || (players[currentPlayerIndex].team[1].lives != 0) || (players[currentPlayerIndex].team[2].lives != 0){
            
            let player = players[currentPlayerIndex] // Je récupère le joueur en cours,
            
            playerChooseCharacter(player) // Le joueur en cours va choisir un de ses perso et faire une action !
            
            nextPlayer() // j'appelle la boucle "NextPlayer" pour avoir le joueur 2 ou le joueur 1 etc...
            gameRound += 1 // j'incremente de 1 le tour de jeu !
        }
    }

    
    
// ⛳️ La méthode demande de choisir un perso et faire l'action en fonction du type de perso ! (Method is called above)
    func playerChooseCharacter(_ player: Player){
            
        print("\n🙋🏻‍♂️ \(player.name), à toi de jouer, choisi ton personnage qui va faire l'action :\n"
                + "0️⃣. \(player.team[0].description), Arme : 🔫 \(player.team[0].weapon.description)\n"
                + "1️⃣. \(player.team[1].description), Arme : 🔫 \(player.team[1].weapon.description)\n"
                + "2️⃣. \(player.team[2].description), Arme : 🔫 \(player.team[2].weapon.description)")
            
            
        if let choice = Int(readLine() ?? "Aucune valeur"){ //Je veux que ma valeur d'entrer soit un Int si c'est nil, j'affiche "Aucune valeur"
                
            if(choice < 0 || choice > 2) { //Si la valeur entrée n'est pas entre 0 et 2, j'affiche le message d'erreur
                print("❌ Tu doit choisir un personnage dans ton équipe !")
                playerChooseCharacter(player) // Et je recommence l'action.
                    
            } else { // Si non le choix du perso est affectée à l'action: (Soigner si c'est Medic, attaquer si autre)
                let character = player.team[choice]
                if character is Medic {
                    heal()
                } else {
                    attackAnEnemy(character)
                }
            }
        }
    }
    
    
    
// ⛳️ La méthode demande aux joueurs d'attaquer un personnage adverse 🤺! (Method is called in playerChooseCharacter)
    func attackAnEnemy(_ attackingCharacter: Character){
        
    let playerEnemyIndex = currentPlayerIndex == 0 ? 1: 0 //l'index de l'enemie est toujours differents de joueur courant
        
    let playerEnemy = players[playerEnemyIndex] //On definis le joueur enemie avec l'index enemie
        
    // ✳️ Cette condition permet d'attribuer une arme aléatoire au joueur courant avec la méthode "randomBox"
    let ChanceNumber = Int.random(in: 0...10) // 1️⃣ J'appelle une suite de nombre aléatoire de 0 à 10,
        
    if ChanceNumber == 5 { // Si le numero 5 tombe, alors le joueur courant bénéficie d'un coffre cadeau !
    randomBox(characters: attackingCharacter)
    } else {
        attackingCharacter.weapon = attackingCharacter.self.weapon //⛔️ à enlevé si pas besoin !⚠️
    }
        
        print("\n😈 Voici l'équipe adverse. Choisi celui que tu veux attaquer 🔪 : "
                    + "\n0️⃣. \(playerEnemy.team[0].description), points de vie : ❤️ \(playerEnemy.team[0].lives)"
                    + "\n1️⃣. \(playerEnemy.team[1].description), points de vie : ❤️ \(playerEnemy.team[1].lives)"
                    + "\n2️⃣. \(playerEnemy.team[2].description), points de vie : ❤️ \(playerEnemy.team[2].lives)")
            
            
            
            if let choice = Int(readLine() ?? "Aucune valeur") { // 
                
                if choice < 0 || choice > 2 {
                    print("❌ Tu dois choisir ton personnage qui attaque !")
                    attackAnEnemy(attackingCharacter)
                } else {
                    attackingCharacter.attack(otherCharacter: playerEnemy.team[choice])
                }
            }
        }

    

// ⛳️ La méthode permets de soigner un allié 💊 ! (Method is called in playerChooseCharacter)
    func heal(){
        
        let player = players[currentPlayerIndex] // Je recupère le joueur courant
                
        print("\n🔔 Quel coéquipier veux tu soigner ? "
                + "\n0️⃣. \(player.team[0].description), points de vie : ❤️ \(player.team[0].lives)"
                + "\n1️⃣. \(player.team[1].description), points de vie : ❤️ \(player.team[1].lives)"
                + "\n2️⃣. \(player.team[2].description), points de vie : ❤️ \(player.team[2].lives)")
                
        if let choice = Int(readLine() ?? "Aucune valeur") {
            if choice < 0 || choice > 2 {
                print("❌ Tu dois choisir ton personnage à soigner !")
                heal()
            } else {
                Medic().heal(anotherCharacter: player.team[choice])
            }
        }
    }

// MARK: - RandomBox 🎁 The gift box can appear in front of a player when he plays !
    
    func randomBox(characters: Character) {
  
        let weapons = [ShotGun(), Grenade(), Pen(), Sword(), MobilePhone()] //Je stock les armes dans un tabeau
            
        if let randomWeapon = weapons.randomElement() { //J'appelle le tableau dans un optionnel aléatoire
            characters.weapon = randomWeapon // les armes des characters qui seront appellés en argument seront aléatoire
            print("🎁 🔑 Un nouveau coffret cadeau, contenant un 🔑 \(randomWeapon.description), de puissance: \(randomWeapon.power) vous est offert 🎁 !")
        }
    }

    
// MARK: - 👾 Game is over !

// ⛳️ La méthode est appellé quand un joueur gagne et on affiche les statistique du jeu !
    func endOfGame(){
        
        nextPlayer() //Je recupère le prochain joueur pour pouvoir afficher facilement le dernier joueur (Winner)
        print("\n\n🔔⚜️ Fin de la partie. Nous avons notre gagnant ! 🏆"
                + "\n\n🎉 🎊 Bravo \(players[currentPlayerIndex].name), tu a remporté le combat 👏👏👏 \n")
    
        print("🚩 Voici les statistiques du jeu 🚩 :"
                + "\n\n🛡 Le combat à durée :", gameRound, "Rounds 🔔 !"
                + "\n\n🤝 Félicitation à vous deux. Voici vos deux équipes !")
    
            for player in players{
                
                print("\n🙋🏻‍♂️ \(player.name), ton équipe est composé de :")
                
                for team in player.team {
                    
                    print("\n👮🏻‍♂️\(team.description) - Son nom : \(team.name) - Points de vie restant : ❤️ \(team.lives) - Son arme: 🔫 \(team.weapon.description)")
            }
        }
        print("\n🛡 War Of Throne ⚔️ - By Fardi Clk 🎖\n")
    }
}
// MARK: - 🤝 The end ! -


// Pour cacher une fonction : cmd + option + ⬅️
// Pour ouvrir une fonction : cmd + option + ➡️
