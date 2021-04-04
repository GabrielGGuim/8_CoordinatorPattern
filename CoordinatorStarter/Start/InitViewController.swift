//
//  ViewController.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import UIKit

protocol InitFlow: class {
    func coordinatorToFinish()
}

class InitViewController: UIViewController {

    var flowCoordinator: InitFlow?
    
    var uiLayout = UIInitViewController()
    
    override func loadView() {
        self.view = uiLayout
        self.uiLayout.delegate = self

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
extension InitViewController: TouchButtonProtocol{
    func sendButton() {
        flowCoordinator?.coordinatorToFinish()
    }
}
