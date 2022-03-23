//
//  DataManager.swift
//  Contacts
//
//  Created by VG on 20.03.2022.
//

import Foundation

class DataManager {
    
// Создаем единственный, статичный (не изменяемый) экземпляр класса, прям в самом классе
    static let shared = DataManager()
    
    let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
    let phones = ["+79251112233", "+79252223344", "+79253334455", "+79254445566", "+79255556677"]
    let emails = ["qqq@gmail.com", "aaa@gmail.com", "eee@gmail.com", "ttt@gmail.com", "ggg@gmail.com"]
   
// И делаем его приватно инициализированным, чтоб не было доступа из вне
    private init() {}
}
