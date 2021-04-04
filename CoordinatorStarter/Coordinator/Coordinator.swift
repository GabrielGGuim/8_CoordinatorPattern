//
//  Coordinator.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import Foundation

protocol Coordinator {
    func start()
    func coordinate(coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(coordinator: Coordinator){
        coordinator.start()
    }
}
