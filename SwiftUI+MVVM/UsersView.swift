//
//  ContentView.swift
//  SwiftUI+MVVM
//
//  Created by Konstantin Loginov on 05.08.2021.
//

import SwiftUI

struct UsersView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

extension UsersView {
    
    class UsersViewModel: ObservableObject {
        @Published var users: [User]
    }
    
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
