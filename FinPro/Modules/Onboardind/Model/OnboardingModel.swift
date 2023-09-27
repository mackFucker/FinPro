//
//  OnboardingModel.swift
//  Messendev
//
//  Created by Роман Анпилов on 03.02.2023.
//

import Foundation

struct OnboardingMainCodable: Codable {
    let pages: [OnboardingPageCodable]
}

struct OnboardingPageCodable: Codable {
    let image: String
    let title: String
    let subtitle: String
    
    enum CodingKeys: String, CodingKey {
        case image = "image-url"
        case title, subtitle
    }
}

