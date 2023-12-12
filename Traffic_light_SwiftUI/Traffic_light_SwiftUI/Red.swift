//
//  Red.swift
//  Traffic_light_SwiftUI
//
//  Created by Apple on 12.12.23.
//

import SwiftUI

struct Red: View {
 
    let width: CGFloat
    let height: CGFloat
    
    @Binding var red: Color
    @Binding var yellow: Color
    @Binding var green: Color
    
    var body: some View {
       
        ZStack {
            Rectangle()
                .frame(width: 110, height: 400)
                .foregroundColor(.black)
            VStack {
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(red)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(yellow)
                Circle()
                    .frame(width: width, height: height)
                    .foregroundColor(green)
            }
        }
    }
}
