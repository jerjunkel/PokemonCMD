//
//  Player.swift
//  PokemonCMD
//
//  Created by Hercules on 8/28/19.
//  Copyright © 2019 Hercules. All rights reserved.
//
import Foundation

enum Gender {
    case boy, girl
}
struct Player {
    let name: String
    let gender: Gender
    //let numofPokemon: Int
    var bag: Bag
    
    func viewAllPokemon () {
        for pokemon in bag.pokedex {
            print(pokemon.name)
        }
    }
    
    mutating func throwPokeball(pokemon: Pokemon) -> Pokemon?{
        //guard let p = optionalValue else { return something }
        guard var pokeball = bag.getPokeball(type: choosePokeball()) else {
            print("lol no balls. The Pokemon got away")
            return nil
        }
        print("\(self.name) threw a \(pokeball.type.rawValue) ball!")
        
        if pokeball.capture(pokemon: pokemon) {
            bag.add(pokemon: pokemon)
            print("You caught \(pokemon.name)!")
            return pokemon
        } else {
            ("\(pokemon.name) broke out!")
            return nil
        }
    }
}

