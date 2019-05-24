//
//  BaseButton.swift
//  TestLGSideMenuController
//
//  Created by Natalie Ng on 2019/5/24.
//  Copyright © 2019 appi. All rights reserved.
//

import UIKit

class BaseButton: UIButton {

    convenience init(title: String) {
        self.init(frame: .zero)
        setTitle(title, for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.backgroundColor = .redViolet
        self.setTitleColor(.white, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }

}
