//
//  Pokeball.swift
//  PokemonCMD
//
//  Created by Student on 9/17/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

//Pokeball - 50%
//Great ball - 60%
//Ultra ball - 80%
//Master ball - 100%

enum PokeballType: String {
    case regular, great, ultra, master
    
    var captureRate: Int {
        switch self {
        case .regular:
            return 5
        case .great:
            return 6
        case .ultra:
            return 8
        case .master:
            return 10
        }
    }
}

struct PokeBall {
    let type: PokeballType
    var pokemon: Pokemon?
    var isEmpty: Bool {
        if let _ = self.pokemon {
            return true
        }
        
        return false
    }
    
    init(type: PokeballType) {
        self.type = type
    }
    
    mutating func capture(pokemon: Pokemon) -> Bool {
        var newPokemon = pokemon
        let randomNumber = (1...10).randomElement()!
        if randomNumber <= type.captureRate {
            self.pokemon = newPokemon
            newPokemon.isCaptured = true
            return true
        }
        
        return false
    }
}
