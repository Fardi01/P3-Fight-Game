//
//  Captain.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 12/01/2021.
//

import Foundation

// MARK: - The Medic 👨🏼‍🚒
/// ⛑ Son role c'est de soigner ses alliés et lui même.
/// Il peut quand même attaquer avec une arme de pointe (HandGun)

class Medic: Character {
    
    override init(name: String, lives: Int, weapon: Weapon, description: String) {
        super.init(name: "", lives: 50, weapon: HandGun(), description: "Medecin ⛑")
    }
    
    /// Health Kit  💊💉❤️
    func heal(anotherCharacter: Character){
         anotherCharacter.lives = min(100, anotherCharacter.lives + 25)
     }
}
/// ⁉️ Es ce que le Medic quand il donne le soin, il redonne les 100 point de vie ou les 25 c'est suffisant à chaque fois ?
