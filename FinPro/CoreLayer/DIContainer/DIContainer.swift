//
//  DIContainer.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 29.09.2023.
//

import Foundation

final class DIContainer: DICprotocol {
    
    var services: [String : Any]
    
    static var shared = DIContainer()
    
    private init () { services = [:] }
}

