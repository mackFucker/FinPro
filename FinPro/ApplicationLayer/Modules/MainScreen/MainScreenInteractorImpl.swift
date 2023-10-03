//
//  MainScreenInteractor.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 23.09.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainScreenBusinessLogic {
    func doSomething(request: MainScreen.Something.Request)
}

//protocol MainScreenDataStore {
    //var name: String { get set }
//}

final class MainScreenInteractorImpl: MainScreenBusinessLogic {
    var presenter: MainScreenPresentationLogic?
    var worker: MainScreenWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: MainScreen.Something.Request) {
        worker = MainScreenWorker()
        worker?.doSomeWork()
        
        let response = MainScreen.Something.Response()
        presenter?.presentSomething(response: response)
    }
}