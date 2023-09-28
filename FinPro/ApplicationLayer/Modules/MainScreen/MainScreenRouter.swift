//
//  MainScreenRouter.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 23.09.2023.
//

import UIKit

protocol MainScreenRoute {
    func openInDetail()
}

class MainScreenRouter: Router<MainScreenViewController>, MainScreenRouter.Routes {
    typealias Routes = Closable & InDetailScreenRoute & MainScreenRoute
}

extension MainScreenRoute where Self: RouterProtocol {
    func openInDetail() {
        
        let transition = PushTransition()
        let vc = InDetailScreenViewController()
        open(vc, transition: transition)
    }
}

