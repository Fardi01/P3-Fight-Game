//
//  Support.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 23/01/2021.
//

import Foundation

// MARK: - Support 🪖!
/// C'est la source de ravitaillement mobile. il fournit les munition à ses coéquipier !
/// Il peut aussi combattre avec une mitrailleuse !

class Support: Character {
    
    override init(name: String, lives: Int, weapon: Weapon, description: String) {
        super.init(name: "", lives: 90, weapon: AssaultRifle(), description: "Support 🪖")
    }
}
