//
//  gameFunctions.swift
//  PokemonCMD
//
//  Created by Hercules on 8/28/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

enum PlayerChoice {
case onePlayer, twoPlayer
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
        newPlayer.bag.add(pokemon: bulbasaur)
    case "squirtle":
        newPlayer.bag.add(pokemon: squirtle)
    case "charmander":
        newPlayer.bag.add(pokemon: charmander)
    default:
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



func newGame() -> PlayerChoice  {
    while true {
        print ("Hello Player! Welcome to the World Of Pokemon!\nWould you like battle someone, or try to catch some Pokemon in one player mode?")
        print ("Press 1 for One Player, Press 2 for Two Player")
        let playerMode = getUserInput()
        switch playerMode {
        case "1":
            return PlayerChoice.onePlayer
        case "2":
            return PlayerChoice.twoPlayer
        default:
            print ("Your input was incorrect!")
        }
    }
    
}

func getUserInput () -> String {
    return readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
}
