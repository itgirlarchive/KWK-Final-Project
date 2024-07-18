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
                    VStack {
                        Image("WaveHeatIcon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                    VStack {
                        Spacer()
                        NavigationLink(destination: Home()) {
                            //Change to start button
                            Image("RecipesIcon")
                                .resizable(resizingMode:.stretch)
                                .aspectRatio(contentMode: .fit)
                            }
                        
                    }

                }
                
                    
                    
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
