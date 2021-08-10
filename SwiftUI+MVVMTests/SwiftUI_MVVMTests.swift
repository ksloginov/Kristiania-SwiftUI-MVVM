//
//  SwiftUI_MVVMTests.swift
//  SwiftUI+MVVMTests
//
//  Created by Konstantin Loginov on 05.08.2021.
//

import XCTest
@testable import SwiftUI_MVVM

class MockedDataService: DataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        completion([User(id: 300, name: "Leroy")])
    }
}

class SwiftUI_MVVMTests: XCTestCase {
    
    var viewModel: UsersView.UsersViewModel!

    override func setUpWithError() throws {
        viewModel = .init(dataService: MockedDataService())
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }
}
