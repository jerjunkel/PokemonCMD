//
//  Pokemon.swift
//  PokemonCMD
//
//  Created by Hercules on 8/28/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

//Type
struct Pokemon {
    //Properties
    let name: String
    let type: PokemonType
    let level: Int
    var isCaptured: Bool = false
    var moves: Set<Move> = Set()
    
    init(_ name: String, type: PokemonType, level: Int = 5, isCaptured: Bool = false, moves: [Move] = []) {
        self.name = name
        self.type = type
        self.level = level
        self.isCaptured = isCaptured
        self.moves = Set(moves)
    }
    
    //Methods
    func attack() {
        print("\(self.name) used tackle!!")
    }
    
    func getCaught() -> Bool {
        let arr = [true, false]
        return arr.randomElement()!
    }
    
    mutating func learn(move: Move) {
        if type == move.type {
            moves.insert(move)
        } else {
            print("\(name) cannot learn \(move.name)")
        }
    }
}

enum PokemonType {
    case fire, water, grass, electric, bug, dark
    case dragon, fighting, flying, ghost, ground
    case ice, normal, poison, psychic, rock, steel
}
