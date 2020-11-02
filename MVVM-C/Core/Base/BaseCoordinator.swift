//
//  BaseCoordinator.swift
//  MVVM-C
//
//  Created by Asep Abdul Azis on 02/11/20.
//

import Foundation
import UIKit

class BaseCoordinator: Coordinator {
    var navigationController: UINavigationController = UINavigationController()

    var parentCoordinator: Coordinator?

    var childCoordinators: [Coordinator] = []

    func start() {
        fatalError("Start Method should be implemnet")
    }

    func start(coordinator: Coordinator) {
        self.childCoordinators += [coordinator]
        coordinator.parentCoordinator = self
        coordinator.start()
    }

    func didFinish(coordinator: Coordinator) {
        if let index = self.childCoordinators.firstIndex(where: { $0 === coordinator }) {
            self.childCoordinators.remove(at: index)
        }
    }

    func removeChildCoordinators() {
        self.childCoordinators.removeAll()
    }
}
