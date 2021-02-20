import Foundation

// We have got 3 weapons type. each of them has an attack power that defines the damage suffered by the other character during an attack.

// Main weapons class

// MARK: - Weapons

class Weapon {
    let power: Int
    let description: String
    
    init(power: Int, description: String){
        self.power = power
        self.description = description
    }
    
    convenience init() {
        self.init(power: 0, description: "")
    }
}

//Ajouter une bombe qui detruit tous les points de vie
// Ajouter aussi une 
