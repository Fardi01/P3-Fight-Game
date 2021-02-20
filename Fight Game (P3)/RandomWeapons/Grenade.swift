//
//  Grenade.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 23/01/2021.
//

import Foundation


// MARK: - Grenade 💣 !

class Grenade: Weapon {
    init(){
        let power = 100
        super.init(power: power, description: "Grenade-MK19.40mm 💣")
    }
}
