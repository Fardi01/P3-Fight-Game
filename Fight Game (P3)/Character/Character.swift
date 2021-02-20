import Foundation


// MARK: - Main Character

class Character {
    var name: String
    var lives: Int
    var weapon: Weapon
    var description: String
    
    init(name: String, lives: Int, weapon: Weapon, description: String) {
        self.name = name
        self.lives = lives
        self.weapon = weapon
        self.description = description
    }
    
    
    ///Convenience init
    convenience init(){
        self.init(name:"", lives: 100, weapon: Weapon(), description: "")
    }
    
    /// -- To attack another caracter --
    func attack(otherCharacter: Character){
        otherCharacter.lives = max(0, otherCharacter.lives - weapon.power)
    } // TODO: enlever le min !
    
}


// Ajouter un personnage soutien + rajouter le role et la puissance de chacun
// Ajouter aussi un capitaine son role c'est
