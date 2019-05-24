//
//  HomeViewController.swift
//  TestLGSideMenuController
//
//  Created by Natalie Ng on 2019/5/24.
//  Copyright © 2019 appi. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    let button = BaseButton()
    var leftItemCallback: (() -> Void)?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        self.view.backgroundColor = .white
        
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([button.widthAnchor.constraint(equalToConstant: 100),button.heightAnchor.constraint(equalToConstant: 20),
                                     button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     button.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        
        setUpNavBar()
    }
    
    private func setUpNavBar() {
        let item = UIBarButtonItem(image: UIImage(named: "iconUser"), style: .plain, target: self, action: #selector(leftNavItemClicked))
        
        item.title = " "
   
        self.navigationItem.leftBarButtonItem = item
    }
    
    @objc func leftNavItemClicked(_ sender: UIBarButtonItem) {
        leftItemCallback?()
    }
    
   
    


}

