//
//  UIInitVIewController.swift
//  CoordinatorStarter
//
//  Created by Gabriel Gonçalves Guimarães on 31/03/21.
//

import Foundation
import UIKit

protocol flowTouchButton: class {
    
    func sendButton()
}

class UIInitViewController: UIView {
    
    weak var touchButton: flowTouchButton?
    
    let flowButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .gray
        btn.setTitle("Send", for: .normal)
        btn.addTarget(self, action: #selector(send), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false

        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        self.constraintsButton()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func constraintsButton(){
        
        self.addSubview(flowButton)

        
        NSLayoutConstraint.activate([
            self.flowButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.flowButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.flowButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }
    
    @objc func send(_ button: UIButton){
        self.touchButton?.sendButton()
    }
}
