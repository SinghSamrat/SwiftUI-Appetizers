//
//  AppetizerListViewModel.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 21/06/2025.
//

import SwiftUI

class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizersFromURI() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                    case .success(let appetizers):
                    DispatchQueue.main.async {
                        self.appetizers = appetizers
                    }
                case .failure(let error):
                    switch error {
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    print("Error: \(error)")
                    }
                }
            }
        }
    }
}
