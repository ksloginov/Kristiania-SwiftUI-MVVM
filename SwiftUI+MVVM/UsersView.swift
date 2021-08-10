//
//  ContentView.swift
//  SwiftUI+MVVM
//
//  Created by Konstantin Loginov on 05.08.2021.
//

import SwiftUI

struct UsersView: View {
    
    @ObservedObject var viewModel: UsersViewModel
    
    init(viewModel: UsersViewModel = .init()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.users) { user in
            Text(user.name)
        }
        .onAppear(perform: viewModel.getUsers)
    }
}

extension UsersView {
    
    class UsersViewModel: ObservableObject {
        @Published var users = [User]()
        
        let dataService: DataService
        
        init(dataService: DataService = AppDataService()) {
            self.dataService = dataService
        }
        
        func getUsers() {
            dataService.getUsers { [weak self] users in
                self?.users = users
            }
        }
    }
    
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = UsersView.UsersViewModel()
        viewModel.users = [User(id: 42, name: "Test")]
        
        return UsersView(viewModel: viewModel)
    }
}
