//
//  MainModuleFactory.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 29.09.2023.
//

import Foundation

protocol MainModuleScreenFactory {
    func makeMainScreen() -> MainScreenDisplayLogic
    func makeInDetailScreen() -> InDetailScreenDisplayLogic
}

struct MainModuleScreenFactoryImpl: MainModuleScreenFactory {
    
    var container: DICprotocol
    
    init(container: DICprotocol) {
        self.container = container
    }
    
    func makeMainScreen() -> MainScreenDisplayLogic {
        return MainScreenViewController(factory: container.resolve(type: MainModuleScreenFactory.self) as! MainModuleScreenFactoryImpl)
    }
    
    func makeInDetailScreen() -> InDetailScreenDisplayLogic {
        return InDetailScreenViewController()
    }
}
