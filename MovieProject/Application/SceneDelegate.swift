//
//  SceneDelegate.swift
//  MovieProject
//
//  Created by Терёхин Иван on 19.12.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = setupTabBarController()
        window?.makeKeyAndVisible()
        
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    
    private func setupTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        let homeController = HomeViewController()
        let favoritesController = FavoritesViewController()
        
        tabBarController.viewControllers = [homeController, favoritesController]
        
        homeController.tabBarItem = UITabBarItem(title: Constant.TabBarController.Titles.home,
                                                 image: .init(systemName: Constant.TabBarController.Icons.home), tag: 0)
        
        favoritesController.tabBarItem = UITabBarItem(title: Constant.TabBarController.Titles.favorites,
                                                      image: .init(
                                                        systemName: Constant.TabBarController.Icons.favorites), tag: 1)
        
        tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.backgroundColor = Constant.TabBarController.Colors.backgroundColor
        tabBarController.tabBar.unselectedItemTintColor = Constant.TabBarController.Colors.unselectedItemTintColor
        tabBarController.tabBar.tintColor = Constant.TabBarController.Colors.selectedItemTintColor
         
        let separatorLine = UIView()
        separatorLine.backgroundColor = UIColor.lightGray
        separatorLine.translatesAutoresizingMaskIntoConstraints = false
        separatorLine.backgroundColor = Constant.TabBarController.Colors.separatorLineColor
        tabBarController.view.addSubview(separatorLine)
    
        NSLayoutConstraint.activate([
              separatorLine.leadingAnchor.constraint(equalTo: tabBarController.view.leadingAnchor),
              separatorLine.trailingAnchor.constraint(equalTo: tabBarController.view.trailingAnchor),
              separatorLine.bottomAnchor.constraint(equalTo: tabBarController.tabBar.topAnchor,
                                                    constant: Constant.TabBarController.ConstantSeparationView.topAnchor),
              separatorLine.heightAnchor.constraint(equalToConstant: Constant.TabBarController.ConstantSeparationView.heightAnchor)
          ])
        
        return tabBarController
    }
    
}

