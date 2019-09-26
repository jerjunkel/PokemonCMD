//
//  Bag.swift
//  PokemonCMD
//
//  Created by Student on 9/17/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

struct Bag {
    var pokedex: [Pokemon] = []
    //var pokeballs: [PokeBall] = [PokeBall(type: .regular)]
    var pokeballs: [PokeballType: [PokeBall]] = [.great: [PokeBall(type: .great)], .master: [PokeBall(type: .master)]]
    
    mutating func add(pokemon: Pokemon) {
        self.pokedex.append(pokemon)
    }
    
    mutating func getPokeball(type: PokeballType) -> PokeBall? {
        return pokeballs[type]?.popLast()
    }
    
}
