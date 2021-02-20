import Foundation

// 🥇 Créer la class 'Player' qui fait reference à moi même en tant que joueur.
// 🥈 J'ai un nom et un groupe de personnage qui vont me permettre de jouer.

// MARK: - Player

/// 👨 La class player correspond à moi même en tant que joueur !

class Player {

    var name: String
    var team: [Character] = []
    
    init(name: String){
        self.name = name
    }
    
    //la méthode 'Init()' c'est le constructeur qui permet de récupérer des valeurs 
    
    init(team: [Character]) {
        self.team = team
        self.name = ""
    }
    convenience init(){
        self.init(name: "")
    }
    
}






///Rajouter mes personnage dans le tableau avec 'append' dans le fichier 'main' !

