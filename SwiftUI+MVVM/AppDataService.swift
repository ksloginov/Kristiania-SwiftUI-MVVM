//
//  AppDataService.swift
//  SwiftUI+MVVM
//
//  Created by Konstantin Loginov on 05.08.2021.
//

import Foundation

class AppDataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        DispatchQueue.main.async {
            completion([
                User(id: 1, name: "Konstantin"),
                User(id: 2, name: "Adam"),
                User(id: 3, name: "Eva")
            ])
        }
    }
}

