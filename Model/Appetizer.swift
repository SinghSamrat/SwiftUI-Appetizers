//
//  Appetizer.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 16/06/2025.
//

import Foundation


struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct MockData {
    static let sampleAppetizer: Appetizer = Appetizer(id: 1, name: "Veggie Delight", description: "A medley of fresh vegetables.", price: 9.99, imageURL: "https://placehold.co/120x90", calories: 150, protein: 10, carbs: 20)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
