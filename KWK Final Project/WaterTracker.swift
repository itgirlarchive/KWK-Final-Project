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
        
        //func fillBody() {
            
          //  .position(x: 10, y: 125)

        //}
        ZStack {
            Color("BackColor").ignoresSafeArea()
            //background color
            //water that fills the body (blue rectangles)
            //photo of the human body
            VStack {
                /*   var motivationQuote = ["WaveHeat", "RecipesIcon"]
                 var randNum = Int.random(in: 0...1)
                 Image(motivationQuote[randNum])
                 .resizable(resizingMode: .stretch)
                 .aspectRatio(contentMode: .fit)
                 .padding(.bottom)
                 */
               Button("Fill") {
                  //  fillBody()
                }
                    //var waterCons +=
            }

        }
        }
}

#Preview {
    WaterTracker()
}
