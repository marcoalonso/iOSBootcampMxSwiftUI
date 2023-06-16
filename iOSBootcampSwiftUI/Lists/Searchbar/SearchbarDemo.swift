//
//  SearchbarDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 16/06/23.
//

import SwiftUI

struct SearchbarDemo: View {
    @State private var users: User = []
    @State private var searchUser = ""
    
    var filteredUsers: User {
        guard !searchUser.isEmpty else { return users }
        return users.filter { $0.name.localizedCaseInsensitiveContains(searchUser)}
    }
    
    var body: some View {
        NavigationStack {
            List(filteredUsers, id: \.id) { user in
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .padding(12)
                        .background(Color.black)
                        .clipShape(Circle())
                        
                    
                    VStack {
                        Text(user.name)
                            .font(.title2)
                        Text(user.email)
                            .font(.title3)
                    }
                }
            }
            .task {
                users = await getUsers()
            }
            .searchable(text: $searchUser, prompt: "Search user")
            .navigationTitle("Users")
        }
    }
    
    func getUsers() async -> User {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try! decoder.decode(User.self, from: data)
    }
}

struct SearchbarDemo_Previews: PreviewProvider {
    static var previews: some View {
        SearchbarDemo()
    }
}
