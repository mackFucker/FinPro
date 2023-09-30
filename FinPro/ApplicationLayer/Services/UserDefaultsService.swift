//
//  UserDefaultsService.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 29.09.2023.
//

import Foundation

protocol UserDefaultService {
    var isNotFirstLaunch: Bool { get set }
}

final class UserDefaultServiceImpl: UserDefaultService {
    
    private enum Keys {
        static let isNotFirstLaunch = "isNotFirstLaunch"
    }
    
    private let storage = UserDefaults.standard

    var isNotFirstLaunch: Bool {
        get {
            return storage.bool(forKey: Keys.isNotFirstLaunch)
        }
        set {
            storage.set(newValue, forKey: Keys.isNotFirstLaunch)
        }
    }
}
