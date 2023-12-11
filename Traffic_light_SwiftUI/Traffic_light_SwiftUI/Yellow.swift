//
//  Yellow.swift
//  Traffic_light_SwiftUI
//
//  Created by Apple on 12.12.23.
//

import SwiftUI

struct Yellow: View {
   
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
                    .foregroundColor(colorOn)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(colorOff)
            }
        }
    }
}

#Preview {
    Yellow(width: 100, height: 100, colorOn: .yellow, colorOff: .gray)
}
