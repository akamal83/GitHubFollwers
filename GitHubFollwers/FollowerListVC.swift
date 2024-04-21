//
//  FollowerListVC.swift
//  GitHubFollwers
//
//  Created by Ahmed Kamal on 21/04/2024.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
