//
//  WaterTracker.swift
//  KWK Final Project
//
//  Created by Anusha Mahajan on 7/17/24.
//

import SwiftUI

struct WaterTracker: View {
    @State var waterCons: String = ""
    @State var totalWater: Int = 0
    @State var wrongInput: Bool = false
    @State var yChange: Int = 0
    let limitWater: Int = 0
    var body: some View {

     /*   let quoteList = ["Keep up the great work!", "You can do it!", "Almost there!", "You got this!", "Do not give up!", "Doing amazing!"]
        var randNum = Int.random(in: 0...6)
      func fillBody() {
            
          .position(x: 10, y: 125)

        }
      */
        ZStack {
            Color("BackColor").ignoresSafeArea()
            Image("Water")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .position(x: 200, y: CGFloat(758 - yChange))
            //y = 758: lowest visible point for blue rectangle
            //y = 525: highest visible point for blue rectangle
            
            //background color
            //water that fills the body (blue rectangles)
            //photo of the human body
            VStack(alignment: .center) {
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
                
             TextField("Water Consumed in Ounces", text: $waterCons)
                    .padding(.vertical)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                
                Button("Fill") {
                    if let waterDrank = Int(waterCons){
                        totalWater += waterDrank
                        yChange = totalWater * 2
                        waterCons = ""
                    }
                    else{
                        wrongInput = true

                    }
                }
                .padding(.all)
                .background(Rectangle() .foregroundColor(.white))
                .cornerRadius(15)
                .font(.title)
                
                if wrongInput == true{
                    Text("Invalid input. Please don't put any special characters, spaces, or letters.")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)

                }
                if totalWater >= 117{
                    Text("You have reached your daily need. Congrats!")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                HStack {
                    Spacer()
                    Image("TransparentBody")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .padding(.trailing)
                }

            }

        }
        }
}

#Preview {
    WaterTracker()
}
