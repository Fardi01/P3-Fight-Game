//
//  shotGun.swift
//  Fight Game (P3)
//
//  Created by fardi Clk on 13/01/2021.
//

import Foundation

// MARK: - Fusil de chasse !

class ShotGun: Weapon {
    init() {
        let power = 45
        super.init(power: power, description: "ShotGun-M10.14")
    }
}
