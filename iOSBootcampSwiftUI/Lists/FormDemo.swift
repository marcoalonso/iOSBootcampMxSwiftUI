//
//  FormDemo.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 03/04/23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var birthday: Date
}

struct FormDemo: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var birthday = Date()
    @State private var showingAlert = false
    @State private var people: [Person] = []
    
    private var isFormValid: Bool {
        !name.isEmpty && !email.isEmpty
    }
    
    private func savePerson() {
        if isFormValid {
            let person = Person(name: name, email: email, birthday: birthday)
            people.append(person)
            name = ""
            email = ""
        } else {
            showingAlert = true
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Personal Information")) {
                        TextField("Name", text: $name)
                        TextField("Email", text: $email)
                        DatePicker("Birthday", selection: $birthday, displayedComponents: .date)
                    }
                    Section {
                        Button(action: savePerson) {
                            Text("Save")
                        }
                        .disabled(!isFormValid)
                    }
                }
                
                .navigationBarTitle("Form Example")
                
                Text("Made with ")
                    .font(.caption)
                Label("CHATGPT", systemImage: "person.fill.viewfinder")
            }
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("Invalid Form"),
                message: Text("Please fill out all required fields."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct FormDemo_Previews: PreviewProvider {
    static var previews: some View {
        FormDemo()
    }
}
