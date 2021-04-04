//
//  AppDelegateCoordinator.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let initCoordinator = InitViewControllerCoordinator(navigationController: navigationController)
        coordinate(coordinator: initCoordinator)
        
    }
    
}
