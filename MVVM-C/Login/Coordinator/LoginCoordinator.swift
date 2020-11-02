//
//  LoginCoordinator.swift
//  MVVM-C
//
//  Created by Asep Abdul Azis on 02/11/20.
//

import Foundation
class LoginCoordinator: BaseCoordinator {
    let viewModel: LoginViewModel
    override init() {
        viewModel = LoginViewModel()
    }

    override func start() {
        let viewController = LoginVC()
        viewController.viewModel = viewModel

        
    }
}
