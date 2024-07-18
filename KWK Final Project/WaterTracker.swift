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
    @State var metWater: Bool = false
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
                .position(x: 200, y: CGFloat(1037 - yChange))
            //y = 1037: lowest visible point for blue rectangle
            //y = 677: highest visible point for blue rectangle
            //have to drink 120 ounces to get to full
            HStack {
                VStack {
                    Image("TransparentBody2")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .position(CGPoint(x: 195, y: 450))

                }


            }

           
            
            //background color
            //water that fills the body (blue rectangles)
            //photo of the human body
            VStack(alignment: .center) {
                HStack {
                    Text("Keep up the good work!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .background(Rectangle() .foregroundColor(.white))
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .padding(.vertical)
                        .padding(.vertical)


                }
                
             TextField("Water Consumed in Ounces", text: $waterCons)
                    .padding(.bottom)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                
                Button("Fill") {
                    if let waterDrank = Int(waterCons){
                        totalWater += waterDrank
                        if totalWater < 120{
                            yChange = totalWater * 3
                        }
                        if totalWater >= 120{
                            yChange = 360
                            metWater = true
                        }
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
            Spacer()
                
             if wrongInput {
                    Text("Invalid input.").font(.title3).fontWeight(.semibold)
                                .foregroundColor(Color.red)
                                .multilineTextAlignment(.center)
                                .onAppear {
                                    wrongInput = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        wrongInput = false
                                    }
                    }
                                .onDisappear {
                                    wrongInput = false
                                }
                }
              
               // if totalWater >= 117{
                   /* Text("You have reached your daily need!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.green)
                        .multilineTextAlignment(.center)
                        .padding()
                    
          //      }*/
                if metWater {
                    Text("You have reached your daily need!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.green)
                        .multilineTextAlignment(.center)
                        .padding()
                        .onAppear{
                            metWater = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                metWater = false
                            }
                        }
                        .onDisappear{
                            metWater = false
                        }
                }

            }

        }
        }
}

#Preview {
    WaterTracker()
}
