//
//  DashboardCoordinator.swift
//  MVVM-C
//
//  Created by Asep Abdul Azis on 02/11/20.
//

import Foundation
class DashboardCoordinator: BaseCoordinator {
    let viewModel: DashboarViewModel
    init(session: Session) {
        viewModel = DashboarViewModel(session)
    }

    override func start() {
        let viewController = DashboardVC()
        viewController.viewModel = viewModel

        navigationController.pushViewController(viewController, animated: true)
    }
}
