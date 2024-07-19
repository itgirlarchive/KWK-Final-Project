//
//  educationPage.swift
//  KWK Final Project
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI

struct educationPage: View {
    
    @State private var currentIndex = 0
    
    let images = ["waterConservation1", "waterConservation2", "waterConservation3", "waterConservation4"]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("BackColor").ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: 20)
                    Text("Why is Water Conservation Important?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Rectangle() .foregroundColor(.white))
                        .frame(width: 380)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                    Spacer()
                        .frame(height: 20)
                    
                    Image(images[currentIndex])
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 260)
                    
                    HStack {
                        // the loop below creates circles for each image
                        ForEach (0..<4) { index in
                            Circle()
                                .fill(self.currentIndex == index ? Color.gray : Color.black)
                                .frame(width: 10, height: 10)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    
                    
                    Text("It is is important to be mindful about water consumption and the way we use water. Around the world, over 2 billion people are forced to live without access to safely managed drinking water services. As the world is facing increased drought and water pollution, remember to conserve water.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                        .frame(width: 380)
                    
                    
                    Spacer()
                        .frame(height: 12)
                    
                    NavigationLink(destination: educationQ1()) {
                        Text("Take Water Conservation Quiz ➡️")
                            .frame(width: 455, height: 45)
                            .background(Rectangle().foregroundColor(.white))
                            .foregroundColor(.black)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .shadow(radius: 5)
                    }
                    
                    
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
                .padding(5)
                
            }
            
        }
        
    }
    
}

#Preview {
    educationPage()
}

