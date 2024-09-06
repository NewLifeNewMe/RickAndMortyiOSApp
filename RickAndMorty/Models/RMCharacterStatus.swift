//
//  RMStatus.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 6.09.24.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
