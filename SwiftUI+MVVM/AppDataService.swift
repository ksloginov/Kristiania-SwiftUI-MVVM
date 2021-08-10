//
//  AppDataService.swift
//  SwiftUI+MVVM
//
//  Created by Konstantin Loginov on 05.08.2021.
//

import Foundation

protocol DataService {
    func getUsers(completion: @escaping ([User]) -> Void)
}

class AppDataService: DataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completion([
                User(id: 1, name: "Konstantin"),
                User(id: 2, name: "Adam"),
                User(id: 3, name: "Eva")
            ])
        }
    }
}

