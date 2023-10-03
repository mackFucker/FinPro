//
//  SceneDelegate.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 26.09.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let userDefaults = UserDefaults.standard
    var userDefaultsService = UserDefaultServiceImpl()
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let viewController = start()
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func start() -> UIViewController {
        let factory = DIContainer.shared.resolve(type: MainModuleScreenFactory.self)

        if userDefaultsService.isNotFirstLaunch {
            print("first launch")
            userDefaultsService.isNotFirstLaunch = true
            
            let viewController = OnboardingViewController()
            return viewController
        }
        else {
            print("Not first launch")
            let viewController = factory.makeMainScreen()

            return viewController as! UIViewController
        }
    }
}


