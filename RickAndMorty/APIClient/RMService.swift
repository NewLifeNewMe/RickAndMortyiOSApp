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
    ///   - type: the type of object we expect to get back
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping(Result<T, Error>) -> Void
    ) {
        
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        print(request.url?.absoluteString ?? "")
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(T.self, from: data)
                completion(.success(json))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
    
}
