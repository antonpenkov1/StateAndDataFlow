//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Антон Пеньков on 07.03.2024.
//

import SwiftUI

class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("name") var name = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    private init() {}
    
    func save(name: String, isLoggedIn: Bool) {
        self.name = name
        self.isLoggedIn = isLoggedIn
    }
    
    func delete() {
        name = ""
        isLoggedIn = false
    }
}
