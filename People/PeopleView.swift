//
//  PeopleView.swift
//  People
//
//  Created by Lotanna Igwe-Odunze on 12/22/18.
//  Copyright © 2018 Sugabelly LLC. All rights reserved.
//

import Foundation
import UIKit

class PeopleView: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        ImportRef.peopleController = PeepRef
        ImportRef.getUsers()
        tableView.reloadData()
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 //PeepRef.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PeopleCell
        
        //let personRef = BookRef[indexPath.row].results[indexPath.row]
        cell.nameLabel?.text = "Testing"
        print(PeepRef.guestbook.first?.results.first?.name.first)
        return cell
    }
    
    
}
var PeepRef = PeopleController()
let ImportRef = Importer()


