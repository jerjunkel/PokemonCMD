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
    var HP: Int {
        didSet {
            if HP < 0 {
                HP = 0
            }
        }
    }
    var currentHP: Int {
        return HP
    }
    var effected: statusEffect
    
    init(_ name: String, type: PokemonType..., level: Int = 5, isCaptured: Bool = false, moves: [Move] = [], HP: Int =  200, effected: statusEffect = .none) {
        self.name = name
        self.type = Set(type)
        self.level = level
        self.isCaptured = isCaptured
        self.moves = Set(moves)
        self.HP = HP
        self.effected = effected
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
            
            guard userChoice != 0 else  {
                pokemon.HP = 0
                return
            }
            
            guard userChoice > 0 else {
                print("That is not an option")
                return
            }
            
            guard effected == .none else {
                print("\(name) is \(effected.rawValue) and cannot move")
                return
            }
            
            guard movesArray.count >= userChoice else {
                print("You don't have that move.")
                continue
            }
            
            let move = movesArray[userChoice - 1]
            
            let randomNumber = (1...10).randomElement()!
            if randomNumber <= move.hitChance.rawValue {
                pokemon.HP -= move.power
                print("\(name) used \(move.name)")

                if randomNumber <= move.effectChance.rawValue {
                    pokemon.effected = move.effect
                    print ("\(pokemon.name) is \(move.effect.rawValue)")
                }
                break
            } else {
                print("\(name) missed")
                break
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

enum statusEffect: String {
    case poison = "poisoned", confuse = "confused"
    case paralyze = "paralyzed", burn = "burned", none, sleep = "asleep"
}
