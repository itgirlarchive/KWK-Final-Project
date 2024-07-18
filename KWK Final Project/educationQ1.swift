//
//  educationQ1.swift
//  KWK Final Project
//
//  Created by Scholar on 7/18/24.
//


import SwiftUI

struct SwiftUIView: View {
    @State private var correctAnswer = ""
    var body: some View {
        ZStack {
            Color("BackColor").ignoresSafeArea()
            
            NavigationStack {
                VStack(alignment: .center) {
                    
                    Spacer().frame(height:25)
                    
                    Text("Water Conservation Quiz")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                    
                    Spacer().frame(height:25)
                    
                    Text("Question 1")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                        .frame(height: 20)
                    Text("How long of a shower do you take on average?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    HStack {
                        Button("Under 3 min") {
                            correctAnswer = "Whew! You are committed to conserving water! 💧"
                        }
                        .frame(width: 150, height: 60)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .font(.title3)
                        .fontWeight(.semibold)
                        Button("3-9 min") {
                            correctAnswer = "Not bad, you are staying on top of your water conservation ✅"
                        }
                        .frame(width: 150, height: 60)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .font(.title3)
                        .fontWeight(.semibold)
                    }
                    
                    HStack {
                        Button("10-15 min") {
                            correctAnswer = "Taking shorter showers can be a big step in the journey for water conservation"
                        }
                        .frame(width: 150, height: 60)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .font(.title3)
                        .fontWeight(.semibold)
                        Button("15+ min") {
                            correctAnswer = "Try to take shorter showers, as that can be a gigantic leap in water conservation!"
                        }
                        .frame(width: 150, height: 60)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .font(.title3)
                        .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    Text(correctAnswer)
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                        .frame(height: 20)
                    NavigationLink(destination: ContentView()) {
                        Button ("Next Question ➡️") {}
                            .foregroundColor(.purple)
                            .fontWeight(.bold)
                            .font(.title2)
                            
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}

