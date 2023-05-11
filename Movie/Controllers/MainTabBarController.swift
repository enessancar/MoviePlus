//
//  MainTabBarController.swift
//  Movie
//
//  Created by Enes Sancar on 11.05.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
    }
    
    fileprivate func configureVC() {
        viewControllers = [
            createNavController(viewController: MoviesVC(), title: "Movies", imageName: "film"),
            createNavController(viewController: ShowsVC(), title: "Shows", imageName: "tv"),
            createNavController(viewController: SearchVC(), title: "Search", imageName: "magnifyingglass"),
            createNavController(viewController: WatchListVC(), title: "Watchlist", imageName: "list.and.film")
        ]
    }
    
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        UITabBar.appearance().tintColor = .red
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .systemBackground
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        return navController
    }
}
