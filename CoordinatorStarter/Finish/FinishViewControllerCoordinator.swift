//
//  FinishViewControllerCoordinator.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import Foundation
import UIKit


class FinishViewcControllerCoordinator: Coordinator{
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let finishViewController = FinishViewController()
        navigationController.pushViewController(finishViewController, animated: true)
    }
    
}
