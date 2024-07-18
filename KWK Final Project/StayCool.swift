//
//  WaysToStayCool.swift
//  KWK Final Project
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI

struct StayCool: View {
    var body: some View {
        ZStack {
            Color("BackColor").ignoresSafeArea()
            VStack {
                Text("Ways to Stay Cool")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Rectangle() .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                Text("1. Drink plenty of water, including     drinks and fruits with high water content such as watermelon and strawberries.")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("2. Eat lightly.                                               ")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Text("3. Wear sunblock whenever you are going outside.")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Text("4. Avoid exercising going out in         direct exposure to the sun during the hottest part of the day.")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Text("5. Wear cotton and loose clothing.   ")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Text("6. Don't leave anyone in a parked     car for long periods of of time.")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Text("7. Ventilate and cool your living        spaces using a fan or by opening windows throughout the day.")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Text("8. Take cool showers                              ")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
    }
}

#Preview {
    StayCool()
}
