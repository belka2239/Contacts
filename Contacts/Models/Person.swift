//
//  Person.swift
//  Contacts
//
//  Created by VG on 17.03.2022.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
       
        let dataManager = DataManager()
        
        var persons: [Person] = []
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phones = dataManager.phones.shuffled()
        let emails = dataManager.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
