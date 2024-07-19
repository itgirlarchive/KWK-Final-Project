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
        
        NavigationStack {
            ZStack {
                Color("BackColor").ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: 20)
                    Text("Why is Water     Conservation Important?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                    Spacer()
                        .frame(height: 30)
                    
                    Image(images[currentIndex])
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 190)
                    
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
                    
                    ScrollView {
                        Text("It is is important to be mindful about water consumption and the way we use water. Around the world, over 2 billion people are forced to live without access to safely managed drinking water services. As the world is facing increased drought and water pollution, remember to conserve water.")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding(.all, 10)
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    NavigationStack {
                        NavigationLink(destination: SwiftUIView()) {
                            Button ("Take Water Conservation Quiz ➡️") {}
                                .background(Rectangle() .foregroundColor(.white))
                                .shadow(radius: 5)
                                .padding(.all)
                                .foregroundColor(.black)
                                .font(.body)
                                .fontWeight(.semibold)
                                .cornerRadius(/*@START_MENU_TOKEN@*/11.0/*@END_MENU_TOKEN@*/)
                        }
                        
                        
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
                .padding(20)
                
            }
            
        }
        
    }
    
}

#Preview {
    informationPage()
}
