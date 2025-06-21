//
//  ContentView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 16/06/2025.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Appetizers")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
        }
        .accentColor(Color("AppAccentColor"))
    }
}

#Preview {
    AppetizerTabView()
}
