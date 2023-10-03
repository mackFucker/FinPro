//
//  InDetailScreenPresenter.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 23.09.2023.
//


import UIKit

protocol InDetailScreenPresentationLogic: AnyObject {
    func presentSomething(response: InDetailScreen.Something.Response)
    var viewController: InDetailScreenDisplayLogic? {get set}
}

class InDetailScreenPresenter: InDetailScreenPresentationLogic {
    weak var viewController: InDetailScreenDisplayLogic?
    
    func presentSomething(response: InDetailScreen.Something.Response) {
        let viewModel = InDetailScreen.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
