//  SceneDelegate.swift
//  GitHubFollwers
//  Created by Ahmed Kamal on 20/04/2024.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window                     = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene        = windowScene
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }

    
    func createSearcNC() -> UINavigationController {
        let searchVC        = SearchVC()
        searchVC.title      = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesListVC        = FavoritesListVC()
        favoritesListVC.title      = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        return UINavigationController(rootViewController: favoritesListVC)
    }
    
    
    func createTabbar() -> UITabBarController {
        let tabbar                      = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers          = [createSearcNC(), createFavoritesNC()]
        return tabbar
    }
    
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

