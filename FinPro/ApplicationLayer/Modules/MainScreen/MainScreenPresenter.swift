//
//  MainScreenPresenter.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 23.09.2023.
//

import UIKit

protocol MainScreenPresentationLogic {
    func presentSomething(response: MainScreen.Something.Response)
}

class MainScreenPresenter: MainScreenPresentationLogic {
    weak var viewController: MainScreenDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: MainScreen.Something.Response) {
        let viewModel = MainScreen.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
