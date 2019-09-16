//
//  ViewController.swift
//  table-view-tutorial
//
//  Created by Declan on 05/06/2019.
//  Copyright © 2019 Declan Conway. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    //Array of people names
    let people = ["Donald", "Declan", "Charles", "Matt", "Ray", "Jake", "Mia", "Daisy"]
    
    //How many sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    //How many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    //Add the list of names to the table view itself
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let personName = people[indexPath.row]
        
        cell.textLabel?.text = personName
        
        return cell
    }
    
    //Title of the table
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "People"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

