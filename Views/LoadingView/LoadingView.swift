//
//  LoadingView.swift
//  SwiftUI-Appetizers
//
//  Created by Samrat Singh on 22/06/2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(.circular)
                .scaleEffect(1.5)
        }
    }
}

#Preview {
    LoadingView()
}
