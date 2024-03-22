//
//  OnboardingView.swift
//  Fructus
//
//  Created by Marcel Felipe Gottardi Anesi on 22/03/24.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 15 Pro")
    }
}
