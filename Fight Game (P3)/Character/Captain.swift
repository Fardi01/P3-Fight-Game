//
//  Captain.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 23/01/2021.
//

import Foundation

// MARK: - Captain ! 👨🏻‍✈️
/// Son role c'est de donner les ordres, il ne peut pas attquer !

class Captain: Character {
    
    override init(name: String, lives: Int, weapon: Weapon, description: String) {
        super.init(name: "", lives: 20, weapon: Knife(), description: "Capitaine 👨🏻‍✈️")
    }
}
