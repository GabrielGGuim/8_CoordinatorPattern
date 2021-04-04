//
//  InitViewControllerCoordinator.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import Foundation
import UIKit



class InitViewControllerCoordinator: Coordinator, InitFlow {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let initViewController = InitViewController()
        initViewController.flowCoordinator = self
        navigationController.pushViewController(initViewController, animated: true)

    }
    
    func coordinatorToFinish() {
        let finishViewController = FinishViewcControllerCoordinator(navigationController: navigationController)
        coordinate(coordinator: finishViewController)
    }
}


