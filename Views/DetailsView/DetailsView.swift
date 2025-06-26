//
//  DetailsView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 22/06/2025.
//

import SwiftUI

struct DetailsView: View {
    var appetizer: Appetizer
    var image: Image?
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            // Image
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 225)
            
            // title
            Text(appetizer.name)
                .font(.title3)
                .fontWeight(.bold)
                .padding()
            Spacer()
            
            // description
            Text(appetizer.description)
                .font(.callout)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .padding()
            Spacer()
            
            // HStack ( Macros )
            MacrosView(calories: appetizer.calories,
                       carbs: appetizer.carbs,
                       protein: appetizer.protein)
            Spacer()
            
            // Button (Price + Add to Order)
            Button {} label: {
                ButtonView(price: appetizer.price)
                    .padding()
            }
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing, content: {
            XButtonView()
                .opacity(0.5)
                .padding()
                .onTapGesture {
                    isShowingDetail = false
                }
        })
        
    }
}

struct ButtonView: View {
    var price: Double
    
    var body: some View {
        Text("$\(price, specifier: "%.2f") - Add to Cart")
            .fontWeight(.bold)
            .frame(width: 240, height: 40)
            .foregroundColor(.white)
            .background(Color("AppAccentColor"))
            .cornerRadius(8)
    }
}

struct XButtonView: View {
    var body: some View {
        Image(systemName: "xmark")
            .frame(width: 30, height: 30)
            .background(Color(.gray))
            .cornerRadius(.infinity)
    }
}

struct MacrosView: View {
    var calories: Int
    var carbs: Int
    var protein: Int
    
    var body: some View {
        HStack(spacing: 35) {
            MacroItemView(macroName: "Calories", macroValue: "\(calories)")
            MacroItemView(macroName: "Carbs", macroValue: "\(carbs) g")
            MacroItemView(macroName: "Protien", macroValue: "\(protein) g")
        }
    }
}

struct MacroItemView: View {
    var macroName: String
    var macroValue: String
    
    var body: some View {
        VStack {
            Text(macroName)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
            
            Text(macroValue)
                .font(.headline)
                .fontDesign(.serif)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
//    XButtonView()
    DetailsView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
}
