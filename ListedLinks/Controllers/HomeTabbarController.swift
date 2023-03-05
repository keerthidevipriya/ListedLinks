//
//  HomeTabbarController.swift
//  ListedLinks
//
//  Created by Keerthi Devipriya(kdp) on 05/03/23.
//

import UIKit

class HomeTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .white
        tabBar.tintColor = .black
        setupVCs()
    }
}

extension HomeTabbarController {
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                      title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = ""//title
        return navController
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: ViewController(), title: NSLocalizedString("Links", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Courses", comment: ""), image: UIImage(systemName: "person")!),
            createNavController(for: ViewController(), title: NSLocalizedString("", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Campaigns", comment: ""), image: UIImage(systemName: "person")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }
}
