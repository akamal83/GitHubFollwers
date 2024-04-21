//
//  UIViewController+Ext.swift
//  GitHubFollwers
//
//  Created by Ahmed Kamal on 21/04/2024.
//

import UIKit

extension UIViewController {
    
     func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
         DispatchQueue.main.async {
             let alertVC                    = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
             alertVC.modalPresentationStyle = .overFullScreen
             alertVC.modalTransitionStyle   = .crossDissolve
             self.present(alertVC, animated: true)
         }
    }
}
