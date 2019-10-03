//
//  Move.swift
//  PokemonCMD
//
//  Created by Jermaine Kelly on 10/2/19.
//  Copyright © 2019 Hercules. All rights reserved.
//

import Foundation


struct Move {
    let type: PokemonType
    let power: Int
    let name: String
}

//Extending a type
//Conforming to the Hashable Protocol
extension Move: Hashable {
    static func == (lhs: Move, rhs: Move) -> Bool {
        return (lhs.name.lowercased() == rhs.name.lowercased()) && lhs.type == rhs.type
    }
}
