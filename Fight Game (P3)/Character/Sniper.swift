//
//  sniper.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 12/01/2021.
//

import Foundation

// MARK: - The Sniper 🪖
/// 🎯 Son role c'est de couvrir son équipe, il est en embuscade !

class Sniper: Character {
    
    override init(name: String, lives: Int, weapon: Weapon, description: String) {
        super.init(name: "", lives: 70, weapon: SniperRifle(), description: "Sniper 🎯")
    }
}
