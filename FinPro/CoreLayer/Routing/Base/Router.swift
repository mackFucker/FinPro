//
//  Router.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 29.09.2023.
//

import UIKit

protocol Closable: AnyObject {
    func close()
}

protocol RouterProtocol: AnyObject {
    associatedtype ViewController: UIViewController
    var viewController: ViewController? {get}
    var factory: MainModuleScreenFactory? {get}
    
    func open(_ viewController: UIViewController, transition: Transition)
}

class Router<U>: RouterProtocol where U: UIViewController {
    typealias ViewController = U
    var factory: MainModuleScreenFactory?

    weak var viewController: ViewController?
    var openTransition: Transition?
    
    func open(_ viewController: UIViewController, transition: Transition) {
        transition.viewController = self.viewController
        transition.open(viewController)
    }
    
    func close() {
        guard let openTransition = openTransition else { assertionFailure("You should specify an open transition in order to close a module.");return }
        guard let viewController = viewController else { assertionFailure("Nothing to close."); return }
        openTransition.close(viewController)
    }
}
