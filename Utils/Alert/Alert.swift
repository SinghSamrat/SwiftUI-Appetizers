//
//  Alert.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 21/06/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id: UUID = UUID()
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("Cannot fetch data."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                      message: Text("Data fetch request failed."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                      message: Text("Response Invalid. Try again later."),
                                      dismissButton: .default(Text("OK")))
    static let invalidData = AlertItem(title: Text("Server Error"),
                                      message: Text("Data Error. Try again later."),
                                      dismissButton: .default(Text("OK")))
}
