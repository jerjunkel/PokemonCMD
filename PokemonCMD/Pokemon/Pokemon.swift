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
    let type: Set<PokemonType>
    let level: Int
    var isCaptured: Bool = false
    var moves: Set<Move> = Set()
    var HP: Int
    
    var currentHP: Int {
        return HP
    }
    
    init(_ name: String, type: PokemonType..., level: Int = 5, isCaptured: Bool = false, moves: [Move] = [], HP: Int =  1000) {
        self.name = name
        self.type = Set(type)
        self.level = level
        self.isCaptured = isCaptured
        self.moves = Set(moves)
        self.HP = HP
    }
    
    //Methods
    func attack(_ pokemon: inout Pokemon) {
        while true {
        print("What move would you like to use?")
        let movesArray = Array(self.moves)
        for (index, move) in movesArray.enumerated() {
            print("\(index + 1). \(move.name)\n\tPow:\(move.power)\n\tAcc:\(move.hitChance.rawValue)")
        }
        //Allow user to try choosing move again
        
        guard let userChoice = Int(getUserInput()) else {
            print("You have to choose a number")
            continue
        }
//
//        let pokemonMove = movesArray[userChoice - 1]
        
        if movesArray.count >= userChoice {
            switch userChoice {
                case 1: pokemon.HP -= movesArray[0].power
                case 2: pokemon.HP -= movesArray[1].power
                case 3: pokemon.HP -= movesArray[2].power
                case 4: pokemon.HP -= movesArray[3].power
                default: print("You don't have that move.")
            }
    
            print("\(name) used \(movesArray[userChoice - 1].name)")
            break
        } else {
            print("\(userChoice) is not an option.")
            }
        }
    }
    
    func getCaught() -> Bool {
        let arr = [true, false]
        return arr.randomElement()!
    }
    
    mutating func getHit(damage: Int) {
        if damage >= HP  {
            HP = 0
        } else {
            HP -= damage
        }
    }
    
    mutating func learn(move: Move) {
        if type.contains(move.type) {
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
