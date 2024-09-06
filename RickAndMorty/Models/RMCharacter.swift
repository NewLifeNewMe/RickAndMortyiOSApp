//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 6.09.24.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
