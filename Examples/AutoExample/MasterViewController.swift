//
//  MasterViewController.swift
//  AutoExample
//
//  Created by DongHeeKang on 2018. 6. 14..
//  Copyright © 2018년 tattn. All rights reserved.
//

import UIKit

final class MasterViewController: UIViewController {
    
    private let pushButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    private let modalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Modal", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pushButton)
        view.addSubview(modalButton)
        
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pushButton.addTarget(self, action: #selector(pushButtonClicked), for: .touchUpInside)
        
        modalButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        modalButton.topAnchor.constraint(equalTo: pushButton.bottomAnchor).isActive = true
        modalButton.addTarget(self, action: #selector(modalButtonClicked), for: .touchUpInside)
        
        view.backgroundColor = .blue
    }
    
    @objc private func pushButtonClicked() {
        navigationController?.pushViewController(PushSubViewController(), animated: true)
    }
    
    @objc private func modalButtonClicked() {
        modalTransitionStyle = .flipHorizontal
        present(ModalSubViewController(), animated: true, completion: nil)
    }
    
}

final class PushSubViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
    
}

final class ModalSubViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
    }
    
}
