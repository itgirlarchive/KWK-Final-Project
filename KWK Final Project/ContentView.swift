//
//  ContentView.swift
//  KWK Final Project
//
//  Created by mandey on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackColor").ignoresSafeArea()
                VStack {
                    Image("WaveHeatIcon")
                        .resizable(resizingMode: .stretch)
                        .position(x: 197, y: 550)
                        .aspectRatio(contentMode: .fill)
                    NavigationLink(destination: Home()) {
                        Image(.getStarted)
                            .resizable()
                            .position(x: 194, y: 180)
                            .aspectRatio(contentMode: .fill)
                        }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
