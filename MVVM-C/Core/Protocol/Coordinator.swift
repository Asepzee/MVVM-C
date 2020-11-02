//
//  Coordinator.swift
//  MVVM-C
//
//  Created by Asep Abdul Azis on 02/11/20.
//

import Foundation
import UIKit
protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? { get set }

    func start()
    func start(coordinator: Coordinator)
    func didFinish(coordinator: Coordinator)
    func removeChildCoordinators()
}
