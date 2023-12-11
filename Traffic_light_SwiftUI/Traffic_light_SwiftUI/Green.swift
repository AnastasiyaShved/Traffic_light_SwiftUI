//
//  Green.swift
//  Traffic_light_SwiftUI
//
//  Created by Apple on 12.12.23.
//

import SwiftUI

struct Green: View {
    let width: CGFloat
    let height: CGFloat
    let colorOn: Color
    let colorOff: Color
    
    var body: some View {
       
        ZStack {
            Rectangle()
                .frame(width: 110, height: 400)
                .foregroundColor(.black)
            VStack {
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOff)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOff)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOn)
            }
        }
    }
}

#Preview {
    Green(width: 100, height: 100, colorOn: .green, colorOff: .gray)
}
