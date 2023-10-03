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
        return MainScreenViewController(factory: container.resolve(type: MainModuleScreenFactory.self),
                                        interactor: container.resolve(type: MainScreenInteractorImpl.self),
                                        presenter: container.resolve(type: MainScreenPresenter.self),
                                        router: container.resolve(type: MainScreenRouter.self))
    }
    
    func makeInDetailScreen() -> InDetailScreenDisplayLogic {
        return InDetailScreenViewController(interactor: container.resolve(type: InDetailScreenBusinessLogic.self),
                                            presenter: container.resolve(type: InDetailScreenPresentationLogic.self))
    }
}
