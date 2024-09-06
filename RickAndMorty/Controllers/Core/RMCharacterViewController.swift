//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 6.09.24.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Characters"
        
        let request = RMRequest(endpoint: .character, pathComponents: [], queryParameters: [URLQueryItem(name: "name", value: "rick")])
        print(request.url)
        
        RMService.shared.execute(request, expecting: String.self) { result in
            switch result {
            case .success(let success):
                <#code#>
            case .failure(let failure):
                <#code#>
            }
        }
    }
    

}
