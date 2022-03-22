//
//  ContactListTableViewController.swift
//  Contacts
//
//  Created by VG on 17.03.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    var persons: [Person] = []


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactLine", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailContactVC = segue.destination as? DetailsContactViewController else { return }
            detailContactVC.person = persons[indexPath.row]
        }
    }
}
