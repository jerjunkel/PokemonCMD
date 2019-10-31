//
//  PokemonMoves.swift
//  PokemonCMD
//
//  Created by Student on 10/3/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation

let tackle = Move(type: .normal, power: 40, name: "Tackle", hitChance: .high, effect: .none)
let ember = Move(type: .fire, power: 60, name: "Ember", hitChance: .high, effect: .burn, effectChance: .superlow)
let watergun = Move(type: .water, power: 60, name: "Water Gun", hitChance: .high, effect: .none)
let vinewhip = Move(type: .grass, power: 60, name: "Vine Whip", hitChance: .high, effect: .none)
let thundershock = Move(type: .electric, power: 60, name: "Thunder Shock", hitChance: .high, effect: .paralyze, effectChance: .superlow)
let bite = Move(type: .dark, power: 70, name: "Bite", hitChance: .low, effect: .none)
let gust = Move(type: .flying, power: 65, name: "Gust", hitChance: .medium, effect: .none)
let dig = Move(type: .ground, power: 65, name: "Dig", hitChance: .high, effect: .none)
let dragonrage = Move(type: .dragon, power: 75, name: "Dragon Rage", hitChance: .low, effect: .none)
let confusion = Move(type: .psychic, power: 60, name: "Confusion", hitChance: .medium, effect: .confuse, effectChance: .low)
let rockthrow = Move(type: .rock, power: 55, name: "Rock Throw", hitChance: .high, effect: .none)
let hyperbeam = Move(type: .normal, power: 100, name: "Hyper Beam", hitChance: .superlow, effect: .none)
let splash = Move(type: .water, power: 0, name: "Splash", hitChance: .high, effect: .none)
let sleeppowder = Move(type: .grass, power: 0, name: "Sleep Powder", hitChance: .medium, effect: .sleep, effectChance: .high)
