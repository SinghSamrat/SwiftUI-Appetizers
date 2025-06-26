//
//  AppetizerListView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 16/06/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerCellView(appetizer: appetizer)
                        .onTapGesture {
                            withAnimation {
                                viewModel.isShowingDetail = true
                            }
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("Appetizers")
                .disabled(viewModel.isShowingDetail ? true : false)
            }
            .onAppear() {
                viewModel.getAppetizersFromURI()
            }
            
            .blur(radius: viewModel.isShowingDetail ? 15 : 0)
            
            
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
            
            if (viewModel.isLoading) {
                LoadingView()
            }
            
            if (viewModel.isShowingDetail) {
                DetailsView(appetizer: viewModel.selectedAppetizer ?? MockData.sampleAppetizer,
                            isShowingDetail: $viewModel.isShowingDetail)
            }
        }
    }
}

#Preview {
    AppetizerListView()
}
