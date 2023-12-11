//
//  ContentView.swift
//  Traffic_light_SwiftUI
//
//  Created by Apple on 11.12.23.
//

import SwiftUI

struct ContentView: View {
    
    let width: CGFloat = 100
    let height: CGFloat = 100
  
    var body: some View {
        ZStack {
            Color(.blue.withAlphaComponent(0.25))
                .ignoresSafeArea()
            VStack {
                Text(" ")
                Spacer()
                ZStack {
                    Red(width: width, height: height, colorOn: .red, colorOff: .gray)
                    RedAndYellow(width: width, height: height, colorOn1: .red, colorOn2: .yellow, colorOff: .gray)
                    Green(width: width, height: height, colorOn: .green, colorOff: .gray)
                    Yellow(width: width, height: height, colorOn: .yellow, colorOff: .gray)
                }
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Start")
                })
                .buttonStyle(.borderedProminent)
                Spacer()
                Text(" ")
            }
        }
   
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
