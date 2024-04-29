//  FavoritesListVC.swift
//  GitHubFollwers
//  Created by Ahmed Kamal on 20/04/2024.

import UIKit

class FavoritesListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
