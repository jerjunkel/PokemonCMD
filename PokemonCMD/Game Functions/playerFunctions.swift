//
//  playerFunctions.swift
//  PokemonCMD
//
//  Created by Student on 9/26/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

var charmander = Pokemon("Charmander", type: PokemonType.fire, level: 5, isCaptured: false)
var squirtle = Pokemon("Squirtle", type: PokemonType.water, level: 5, isCaptured: false)
var bulbasaur = Pokemon("Bulbasaur", type: PokemonType.grass, level: 5, isCaptured: false)
var pikachu = Pokemon("Pikachu", type: PokemonType.electric, level: 5, isCaptured: false)
let pokedex = [charmander, squirtle, bulbasaur, pikachu]

let newPokemon = Pokemon("Canaan", type: .water, level: 10)


func encounterWildPokemon(player: Player) -> Player {
    var updatedPlayer = player
    let wildPokemon = pokedex.randomElement()!
    print("A Wild \(wildPokemon.name) appeared!")
    print ("Would you like to catch it?")
    let userChoice = getUserInput()
    if userChoice == "yes" {
        while updatedPlayer.throwPokeball(pokemon: wildPokemon) == nil {
            print("Would you like to try again?")
            if getUserInput() == "yes" {
                continue
            } else {
                print("\(player.name) ran away!")
                return updatedPlayer
            }
        }
        
    } else {
        print("\(player.name) ran away!")
        
    }
    return updatedPlayer
}

func choosePokemon(player: Player, pokedex: [Pokemon]) -> Player {
    var newPlayer = player
    print ("Pick a Pokemon \(newPlayer.name.capitalized)!")
    for pokemon in pokedex {
        print(pokemon.name)
    }
    
    let playerPokemon = getUserInput()
    switch playerPokemon.lowercased() {
    case "bulbasaur":
        bulbasaur.learn(move: vinewhip)
        newPlayer.bag.add(pokemon: bulbasaur)
    case "squirtle":
        squirtle.learn(move: watergun)
        newPlayer.bag.add(pokemon: squirtle)
    case "charmander":
        charmander.learn(move: ember)
        newPlayer.bag.add(pokemon: charmander)
    default:
        pikachu.learn(move: thundershock)
        newPlayer.bag.add(pokemon: pikachu)
    }
    
    return newPlayer
    
}


func choosePokeball() -> PokeballType {
    print("Choose your Pokeball")
    print("\t1. Ultra Ball\n\t2. Great Ball\n\t3. PokeBall\n\t4. Master Ball" )
    let userChoice = getUserInput()
    switch userChoice.lowercased() {
    case "1":
        return .ultra
    case "2":
        return .great
    case "4":
        return .master
    default:
        return .regular
    }
}
