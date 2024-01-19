//
//  ContentView.swift
//  OpeningLinkSwiftUI
//
//  Created by Neto Lobo on 18/01/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openLink
    
    var body: some View {
        VStack(spacing: 40) {
            
            Link("Link", destination: URL(string: "https://www.apple.com/")!)
            
            Link(destination: URL(string: "https://www.apple.com/")!) {
                HStack {
                    Image(systemName: "swift")
                    
                    Text("Custom link")
                    
                }
            }
            .foregroundStyle(.orange)
            
            Button {
                openLink(URL(string: "https://www.apple.com/")!)
            } label: {
                Text("Button link")
                    .frame(width: 120, height: 60)
                    .background(.purple)
                    .foregroundStyle(.white)
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .clipShape(.capsule)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
