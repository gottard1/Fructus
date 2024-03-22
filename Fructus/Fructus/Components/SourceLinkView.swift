//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Marcel Felipe Gottardi Anesi on 22/03/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ZStack {
        Color.blue
            .ignoresSafeArea()
        
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
