//
//  HandGun.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 12/01/2021.
//

import Foundation

// MARK: - HandGun 🔫

class HandGun: Weapon {
    init(){
        let power = 20
        super.init(power: power, description: "Glock-19")
    }
}
