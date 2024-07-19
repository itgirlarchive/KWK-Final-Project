//
//  educationQ2.swift
//  KWK Final Project
//
//  Created by Scholar on 7/19/24.
//

import SwiftUI

struct educationQ2: View {
    @State private var correctAnswer = ""
    var body: some View {
        ZStack {
            Color("BackColor").ignoresSafeArea()
            
            NavigationStack {
                VStack(alignment: .center) {
                    
                    Spacer().frame(height:35)
                    
                    Text("Water Conservation Quiz")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding()
                    
                    Spacer().frame(height:55)
                    
                    Text("Question 2")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                        .frame(height: 20)
                    Text("How often do you run your washing machine per month?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    HStack {
                        Button("Under 2 times") {
                            correctAnswer = "Way to go! Great job conserving water"
                        }
                        .padding(.horizontal)
                        .frame(width: 150, height: 80)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        Button("3 to 5 times") {
                            correctAnswer = "Keep up the water efficiency!"
                        }
                        .padding(.horizontal)
                        .frame(width: 150, height: 80)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)

                    }
                    
                    HStack {
                        Button("5-7 times") {
                            correctAnswer = "Cool! Try to limit using your washing machine as much, as it can be a great way to conserve water"
                        }
                        .padding(.horizontal)
                        .frame(width: 150, height: 80)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)

                        Button("8+ times") {
                            correctAnswer = "Limiting the number of times you run the washing machine can be a great way to conserve water!"
                        }
                        .padding(.horizontal)
                        .frame(width: 150, height: 80)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)

                    }
                    
                    Spacer()
                    Text(correctAnswer)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
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
    educationQ2()
}
