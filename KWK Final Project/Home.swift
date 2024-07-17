//
//  Home.swift
//  KWK Final Project
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color("BackColor").ignoresSafeArea()
            
            Image(.homeBackground)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            VStack {
                Spacer()
                HStack {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image(.waterTrackerIcon)
                            .resizable()
                            .position(x: 150, y: 140)
                            .padding(.leading)
                            .frame(width: 250.0, height: 250.0)
                    }
                    NavigationLink(destination: WaterTracker()) {
                        Image(.recipesIcon)
                            .resizable()
                            .position(x: 90, y: 136)
                            .padding(.trailing)
                            .frame(width: 250.0, height: 250.0)
                    }
                }
                HStack {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image(.climateChangeIcon)
                            .resizable()
                            .position(x: 150, y: 70)
                            .padding(.leading)
                            .frame(width: 250.0, height: 250.0)
                    }
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image(.stayCoolIcon)
                            .resizable()
                            .position(x: 78, y: 74)
                            .padding(.leading)
                            .frame(width: 250.0, height: 250.0)
                    }
                }
        
            }
        }
    }
}

#Preview {
    Home()
}
