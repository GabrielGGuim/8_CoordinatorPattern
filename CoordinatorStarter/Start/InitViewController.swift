//
//  ViewController.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import UIKit

class ViewController: UIViewController {

    var flowCoordinator: InitFlow?
    
    var uiViewController = UIInitViewController()
    
    override func loadView() {
        self.view = uiViewController
        self.uiViewController.touchButton = self

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
extension ViewController: flowTouchButton{
    func sendButton() {
        flowCoordinator?.coordinatorToFinish()
    }
}
