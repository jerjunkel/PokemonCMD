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
let magikarp = Pokemon("Magikarp", type: .water, level: 100, isCaptured: true, moves: [splash], HP: 2)
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
    
    for (index, pokemon) in pokedex.enumerated() {
        print("\(index + 1). \(pokemon.name)")
    }
    
    
    guard let userChoice = Int(getUserInput()), userChoice > 0 &&
        userChoice <= pokedex.count else {
        print("You get Magikarp...Fool...")
        newPlayer.bag.add(pokemon: magikarp)
        return newPlayer
    }
    
    let playerPokemon = pokedex[userChoice - 1]
    newPlayer.bag.add(pokemon: playerPokemon)
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

func getPokedex() -> [Pokemon] {
    let charmander = Pokemon("Charmander", type: PokemonType.fire, level: 5, isCaptured: false, moves: [tackle, ember, bite, dig])
    let squirtle = Pokemon("Squirtle", type: PokemonType.water, level: 5, isCaptured: false, moves: [tackle, watergun, bite, dig])
    let bulbasaur = Pokemon("Bulbasaur", type: PokemonType.grass, level: 5, isCaptured: false, moves: [tackle, vinewhip, bite, sleeppowder])
    let pikachu = Pokemon("Pikachu", type: PokemonType.electric, level: 5, isCaptured: false, moves: [tackle, thundershock, bite], effected: .sleep)
    let pidgey = Pokemon("Pidgey", type: PokemonType.flying, level: 5, isCaptured: false, moves: [gust, tackle])
    let alakazam = Pokemon("Alakazam", type: PokemonType.psychic, level: 5, isCaptured: false, moves: [confusion, hyperbeam])
    let dragonite = Pokemon("Dragonite", type: PokemonType.dragon, level: 5, isCaptured: false, moves: [gust, dragonrage, hyperbeam])
    let diglett = Pokemon("Diglett", type: PokemonType.ground, level: 5, isCaptured: false, moves: [dig, rockthrow, tackle])
    
    
    return [charmander, squirtle, bulbasaur, pikachu, diglett, alakazam, pidgey, dragonite]
}
