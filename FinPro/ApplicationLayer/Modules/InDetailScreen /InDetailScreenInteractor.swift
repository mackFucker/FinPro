//
//  InDetailScreenInteractor.swift
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

protocol InDetailScreenBusinessLogic: AnyObject {
    func doSomething(request: InDetailScreen.Something.Request)
    var presenter: InDetailScreenPresentationLogic? {get set}
}

final class InDetailScreenInteractor: InDetailScreenBusinessLogic {    
    var presenter: InDetailScreenPresentationLogic?
    var worker: InDetailScreenWorker?

    func doSomething(request: InDetailScreen.Something.Request) {
        worker = InDetailScreenWorker()
        worker?.doSomeWork()
        
        let response = InDetailScreen.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
