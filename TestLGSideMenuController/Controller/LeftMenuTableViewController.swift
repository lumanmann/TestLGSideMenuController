//
//  LeftMenuTableViewController.swift
//  TestLGSideMenuController
//
//  Created by Natalie Ng on 2019/5/24.
//  Copyright © 2019 appi. All rights reserved.
//

import UIKit

class LeftMenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = "\(indexPath.row+1)"

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = FirstViewController()
            self.present(vc, animated: true, completion: nil)
        case 1:
            let vc = SecondViewController()
            self.present(vc, animated: true, completion: nil)
        case 2:
            let vc = ThirdViewController()
            self.present(vc, animated: true, completion: nil)
        default: break
        }
    }
    

   

}
