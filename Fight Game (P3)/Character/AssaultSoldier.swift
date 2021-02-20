//
//  soldier.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 12/01/2021.
//

import Foundation

// MARK: - Assault Soldier 🪖
/// 💥 Son role c'est d'aller à l'attaque et d'occuper le terrain !

class AssaultSoldier: Character {
    
    override init(name: String, lives: Int, weapon: Weapon, description: String) {
        super.init(name: "", lives: 100, weapon: AssaultRifle(), description: "Soldat d'assault 🪖💥")
    }
}
