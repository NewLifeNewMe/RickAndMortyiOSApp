//
//  RMService.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 6.09.24.
//

import Foundation

/// Primary API service object to get data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    /// Pirvatized constructor
    private init() {}
    
    /// Send rick and morty api call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data and error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void) {
        
    }
    
}
