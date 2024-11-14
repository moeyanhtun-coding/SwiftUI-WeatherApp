//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Moe Yan Htun on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:Gradient(
                            colors:[.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Yangon")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
