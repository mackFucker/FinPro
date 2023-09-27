//
//  InDetailScreenPresenter.swift
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

protocol InDetailScreenPresentationLogic
{
  func presentSomething(response: InDetailScreen.Something.Response)
}

class InDetailScreenPresenter: InDetailScreenPresentationLogic
{
  weak var viewController: InDetailScreenDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: InDetailScreen.Something.Response)
  {
    let viewModel = InDetailScreen.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
