//
//  educationPage.swift
//  KWK Final Project
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI

struct informationPage: View {
    
    @State private var currentIndex = 0
    
    let images = ["waterConservation1", "waterConservation2", "waterConservation3", "waterConservation4"]
    
    var body: some View {
        
        ZStack {
            Color("BackColor").ignoresSafeArea()
            
            VStack {
                Spacer()
                    .frame(height: 60)
                Text("Why is Water Conservation Important?")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image(images[currentIndex])
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    // the loop below creates circles for each image
                    ForEach (0..<images.count) { index in
                        Circle()
                            .fill(self.currentIndex == index ? Color.gray : Color.black)
                            .frame(width: 10, height: 10)
                    }
                }
                
                Spacer()
                
            }.onAppear {
                // uses Timers to get the photos to cycle
                Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
                    if self.currentIndex + 1 == self.images.count{
                        self.currentIndex = 0
                    } else {
                        self.currentIndex += 1
                    }
                }
            }
            .padding()
            
        }
        
    }
    
}

#Preview {
    informationPage()
}
