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
    var player = createPlayer(player: "Player")
    print ("Go into the world, \(player.name), and try to catch'em all!")
    player = encounterWildPokemon(player: player)
    player.viewAllPokemon()

case PlayerChoice.twoPlayer:
    print ("Let's start a battle!")
    let superstorm = Move(type: .grass, power: 2000, name: "SuperStorm", hitChance: .high)
    var doodoomon = Pokemon("doodoomon", type: .grass)
    doodoomon.learn(move: superstorm)
    print(doodoomon)
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
