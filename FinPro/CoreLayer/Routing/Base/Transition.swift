//
//  Transition.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 29.09.2023.
//

import Foundation
import UIKit

protocol Transition: AnyObject {
    var viewController: UIViewController? {get set}
    
    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
