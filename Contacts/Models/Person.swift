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
               
        var persons: [Person] = []
        
// Обращаемся к DataManager, через экземпляр класса shared
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
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

// Создадим перечисление для изображений слева от номера тел и email
enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
