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

func createPlayer (player: String) -> Player {
    print("\(player.capitalized), What's your name?")
    let name = getUserInput()
    print("Are you a boy or girl?")
    let genderChoice = getUserInput()
    let gender: Gender
    
    if genderChoice == "boy" {
        gender = .boy
    }
    else {
        gender = .girl
    }
     return Player(name: name, gender: gender, bag: Bag())
}

