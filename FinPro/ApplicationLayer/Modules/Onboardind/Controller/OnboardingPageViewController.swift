//
//  ViewController.swift
//  Messendev
//
//  Created by Роман Анпилов on 02.02.2023.
//

import UIKit

final class OnboardingPageViewController: UIViewController {
        
    private let image: String
    private let titleLabel: String
    private let subtitleLabel: String
    private let onboardingViewInput: OnboardingViewInput
    
    
    init(image: String,
         titleText: String,
         subtitleText: String,
         onboardingViewInput: OnboardingViewInput) {
        
        self.onboardingViewInput = onboardingViewInput
        self.image = image
        self.titleLabel = titleText
        self.subtitleLabel = subtitleText
        super.init(nibName: nil, bundle: nil)
        onboardingViewInput.setDataOnboarding(image: image,
                                               title: titleLabel,
                                               subtitle: subtitleLabel)
        self.view = onboardingViewInput as? UIView

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

