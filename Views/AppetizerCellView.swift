//
//  AppetizerCellView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 21/06/2025.
//

import SwiftUI

struct AppetizerCellView: View {
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
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
            .padding()
        }
    }
}

#Preview {
    AppetizerCellView(appetizer: MockData.sampleAppetizer)
}

