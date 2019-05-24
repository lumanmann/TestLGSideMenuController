//
//  CustomNavigationController.swift
//  TestLGSideMenuController
//
//  Created by Natalie Ng on 2019/5/24.
//  Copyright © 2019 appi. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.isTranslucent = true
        
        self.navigationBar.backIndicatorImage = UIImage(named: "iconCancelStopExit")
        self.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "iconCancelStopExit")
        
        
        
        self.navigationBar.tintColor = .redViolet
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.redViolet, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 23.0, weight: .regular)]


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
