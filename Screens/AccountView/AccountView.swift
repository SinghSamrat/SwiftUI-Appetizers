//
//  AccountView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 16/06/2025.
//

import SwiftUI

struct AccountView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var birthdate: Date = Date()
    @State private var extraNapkins: Bool = false
    @State private var frequentRefills: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("UserName", text: $username)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    TextField("Phone", text: $phone)
                    
                    DatePicker("BirthDate",
                               selection: $birthdate,
                               displayedComponents: .date)
                    
                    Button() {
                        
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Preferences")) {
                    Toggle(isOn: $extraNapkins) {
                        Text("Extra Napkins")
                    }
                    Toggle(isOn: $frequentRefills) {
                        Text("Frequent Refills")
                    }
                }.toggleStyle(SwitchToggleStyle(tint: .appAccent))
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
