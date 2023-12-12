//
//  ContentView.swift
//  Traffic_light_SwiftUI
//
//  Created by Apple on 11.12.23.
//

import SwiftUI

enum States {
    case red
    case redYellow
    case green
    case yellow
}

enum TextButton: String {
    case start = "Start"
    case stop = "Stop"
}

struct ContentView: View {
    
    @State private var state: States = .red
    @State private var timerIsStart: Bool = false
    @State private var textbtn: TextButton = .start
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    let width: CGFloat = 100
    let height: CGFloat = 100
    
    @State var red: Color = .red
    @State var yellow: Color = .yellow
    @State var green: Color = .green
    
    var body: some View {
        ZStack {
            Color(.blue.withAlphaComponent(0.25))
                .ignoresSafeArea()
            
            VStack {
                Text(" ")
                Spacer()
                
                Red(width: width, height: height, red: $red, yellow: $yellow, green: $green)
                Spacer()
                Button(action: {
                    timerIsStart.toggle()
                }, label: {
                    Text("\(textbtn.rawValue)")
                })
                
                .buttonStyle(.borderedProminent)
                Spacer()
                Text(" ")
            }
        }.onReceive(timer, perform: { _ in
            if timerIsStart == true  {
                changeState()
                textbtn = .stop
            } else {
                resetState()
                textbtn = .start
            }
        })
    }
    
    func changeState() {
        switch state {
        case .red:
            red = .red
            yellow = .gray
            green = .gray
            
            state = .redYellow

        case .redYellow:
            red = .red
            yellow = .yellow
            green = .gray
            state = .green
        case .green:
            red = .gray
            yellow = .gray
            green = .green
            state = .yellow
        case .yellow:
            red = .gray
            yellow = .yellow
            green = .gray
            state = .red
        }
    }
    
    func resetState() {
        red = .gray
        yellow = .gray
        green = .gray
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
