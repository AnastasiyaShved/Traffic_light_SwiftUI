//
//  RedAndYellow.swift
//  Traffic_light_SwiftUI
//
//  Created by Apple on 12.12.23.
//

import SwiftUI

struct RedAndYellow: View {
    let width: CGFloat
    let height: CGFloat
    let colorOn1: Color
    let colorOn2: Color
    let colorOff: Color
    
    var body: some View {
       
        ZStack {
            Rectangle()
                .frame(width: 110, height: 400)
                .foregroundColor(.black)
            VStack {
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOn1)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOn2)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOff)
            }
        }
    }
}

#Preview {
    RedAndYellow(width: 100, height: 100, colorOn1: .red, colorOn2: .yellow, colorOff: .gray)
}
