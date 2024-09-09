//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 9.09.24.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    
    public let value: String
    public let title: String
    
    init(value: String,
         title: String
    ) {
        self.value = value
        self.title = title
    }
}
