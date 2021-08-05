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
    }
}

extension UsersView {
    
    class UsersViewModel: ObservableObject {
        @Published var users = [User]()
    }
    
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
