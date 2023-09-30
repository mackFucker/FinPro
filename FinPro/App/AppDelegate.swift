//
//  AppDelegate.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 26.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        registerDependencies()
        
        return true
    }

    private func registerDependencies() {
        var DIContainer = DIContainer.shared
        
        DIContainer.register(type: MainModuleScreenFactory.self,
                             service: MainModuleScreenFactoryImpl(container: DIContainer))
        
    }
}

