//
//  SectionContactListViewController.swift
//  Contacts
//
//  Created by VG on 17.03.2022.
//

import UIKit

class SectionContactListViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactLine", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
// Добавим изображение для телефона
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        } else {
            content.text = person.email
// Добавим изображение для email
            content.image = UIImage(systemName: Contacts.email.rawValue)

        }
 
// Можно сделать перебор при помощи свича или использовать if else
//        switch indexPath.row {
//        case 0:
//            content.text = person.phoneNumber
//            content.image = UIImage(systemName: Contacts.phone.rawValue)
//        default:
//            content.text = person.email
//            content.image = UIImage(systemName: Contacts.email.rawValue)
//        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
