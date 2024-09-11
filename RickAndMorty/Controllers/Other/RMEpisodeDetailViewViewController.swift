//
//  RMEpisodeDetailViewViewController.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 11.09.24.
//

import UIKit

final class RMEpisodeDetailViewViewController: UIViewController {
    
    private let url: URL?
    
    init(url: URL?) {
        self.url = url
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Episode"
    }


}
