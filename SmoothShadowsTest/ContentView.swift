//
//  ContentView.swift
//  SmoothShadowsTest
//
//  Created by Frad LEE on 12/12/19.
//  Copyright © 2019 Frad LEE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        Rectangle()
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.929, green: 0.949, blue: 0.969)/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                ZStack {
                   Image("Noise")
                        .resizable()
                        .frame(width: 200, height: 200).opacity(1)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.02), radius: 2.2, x: 0, y: 0)
                        .shadow(color: Color.black.opacity(0.028), radius: 5.3, x: 0, y: 0)
                        .shadow(color: Color.black.opacity(0.035), radius: 10, x: 0, y: 0)
                        .shadow(color: Color.black.opacity(0.042), radius: 17.9, x: 0, y: 0)
                        .shadow(color: Color.black.opacity(0.05), radius: 33.4, x: 0, y: 0)
                        .shadow(color: Color.black.opacity(0.07), radius: 80, x: 0, y: 0)
                }
                .padding(-50)
                Spacer()
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.07), radius: 80, x: 0, y: 0)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
