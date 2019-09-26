//
//  main.swift
//  PokemonCMD
//
//  Created by Hercules on 8/28/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation


let playerMode = newGame()

switch playerMode {
case PlayerChoice.onePlayer:
    print ("Go into the world and try to catch'em all!")
    print("Player1, What's your name?")
    let player1name = getUserInput()
    print("Are you a boy or girl?")
    let player1GenderChoice = getUserInput()
    let player1Gender: Gender
    
    if player1GenderChoice == "boy" {
        player1Gender = Gender.boy
    }
    else {
        player1Gender = Gender.girl
    }
    var player1 = Player(name: player1name, gender: player1Gender, bag: Bag())

case PlayerChoice.twoPlayer:
    print ("Let's start a battle!")
}
//
////
////print("Player2, What's your name")
////let player2name = readLine()!
////var player2 = Player(name: player2name, age: 14, bag: [])
//
//print("Let's play Pokemon!")
//
//
let charmander = Pokemon(name: "Charmander", type: PokemonType.fire, level: 5, isCaptured: false)
let squirtle = Pokemon(name: "Squirtle", type: PokemonType.water, level: 5, isCaptured: false)
let bulbasaur = Pokemon(name: "Bulbasaur", type: PokemonType.grass, level: 5, isCaptured: false)
let pikachu = Pokemon(name: "Pikachu", type: PokemonType.electric, level: 5, isCaptured: false)

//let pokedex = [charmander, squirtle, bulbasaur, pikachu]
//
//player1 = choosePokemon(player: player1, pokedex: pokedex)
////player2 = choosePokemon(player: player2, pokedex: pokedex)
//
////print(player1)
////print(player2)
//
//let wildPokemon = pokedex.randomElement()!
//print("A Wild \(wildPokemon.name) appeared!")
//print ("Would you like to catch it?")
//let userChoice = readLine()!.lowercased()
//if userChoice == "yes" {
//    if let _ = player1.throwPokeball(pokemon: wildPokemon) {
//        player1.viewAllPokemon()
//    }else {
//        print("The pokemon escaped")
//    }
//
//} else {
//    print ("\(player1.name) ran away!")
//}
