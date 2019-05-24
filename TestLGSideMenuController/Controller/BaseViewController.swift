//
//  BaseViewController.swift
//  TestLGSideMenuController
//
//  Created by Natalie Ng on 2019/5/24.
//  Copyright © 2019 appi. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    let button = BaseButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(selfDismiss(_:)), for: .touchUpInside)
        NSLayoutConstraint.activate([button.widthAnchor.constraint(equalToConstant: 18),button.heightAnchor.constraint(equalTo: button.widthAnchor),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)])
       
    }
    
    @objc func selfDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
