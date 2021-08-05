//
//  ContentView.swift
//  SwiftUI+MVVM
//
//  Created by Konstantin Loginov on 05.08.2021.
//

import SwiftUI

struct UsersView: View {
    
    @StateObject var viewModel = UsersView.UsersViewModel()
    
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
        
        let dataService = AppDataService()
        
        func getUsers() {
            dataService.getUsers { [weak self] users in
                self?.users = users
            }
        }
    }
    
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
