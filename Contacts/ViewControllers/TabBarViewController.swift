//
//  TabBarViewController.swift
//  Contacts
//
//  Created by VG on 20.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let persons = Person.getContactList()
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else { return }
        guard let sectionContactVC = viewControllers?.last as? SectionContactListViewController else { return }
        
        contactListVC.persons = persons
        sectionContactVC.persons = persons
    }
}
