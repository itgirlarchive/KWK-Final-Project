//
//  WaterTracker.swift
//  KWK Final Project
//
//  Created by Anusha Mahajan on 7/17/24.
//

import SwiftUI

struct WaterTracker: View {
    var waterCons = 0
    var body: some View {
     /*   let quoteList = ["Keep up the great work!", "You can do it!", "Almost there!", "You got this!", "Do not give up!", "Doing amazing!"]
        var randNum = Int.random(in: 0...6)
      func fillBody() {
            
          .position(x: 10, y: 125)

        }
      */
        ZStack {
            Color("BackColor").ignoresSafeArea()
            //background color
            //water that fills the body (blue rectangles)
            //photo of the human body
            VStack {
                Spacer()
                HStack {
                    Text("Keep up the good work!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding(.vertical)
                        .padding(.top)
                        .padding(.vertical)


                }
                Spacer()
                
                TextField("Water Consumed in Ounces", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.vertical)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.all)

                
                Button("Fill") {
                  //  fillBody()
                }
                .padding(.all)
                .background(Rectangle() .foregroundColor(.white))
                .cornerRadius(15)
                .font(.title)
                
                Spacer()
                HStack {
                    Spacer()
                    Image("TransparentBody")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .padding(.trailing)
                }
                
                    //var waterCons +=
            }

        }
        }
}

#Preview {
    WaterTracker()
}
