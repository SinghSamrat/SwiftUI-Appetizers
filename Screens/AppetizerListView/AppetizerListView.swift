//
//  AppetizerListView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 16/06/2025.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                
                HStack {
                    Rectangle()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(appetizer.name)
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("$\(appetizer.price, specifier:"%.2f")")
                            .font(.body)
                            .foregroundColor(.secondary)
                    }
                    .padding(.leading)
                }
                
                
                
            }
            Text("AppetizerListView")
                .navigationTitle("Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
