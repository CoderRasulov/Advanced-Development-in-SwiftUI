//
//  TextfieldIcon.swift
//  Advanced Development in SwiftUI
//
//  Created by Asliddin Rasulov on 30/05/22.
//

import SwiftUI

struct TextfieldIcon: View {
    var iconName: String
    @Binding var currentlyEditing: Bool
    
    var gradient1: [Color] = [
        Color.init(red: 101/255, green: 134/255, blue: 1),
        Color.init(red: 1, green: 64/255, blue: 80/255),
        Color.init(red: 109/255, green: 1, blue: 185/255),
        Color.init(red: 39/255, green: 232/255, blue: 1)
    ]
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: gradient1), center: .center, angle: .degrees(0))
                .blur(radius: 10)
            VisualEffectBlur(blurStyle: .dark) {
                Color("tertiaryBackground")
                    .cornerRadius(12)
                    .opacity(0.8)
                    .blur(radius: 3)
            }
        }
        .cornerRadius(12)
        .overlay(
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.white, lineWidth: 1)
//                    .blur(radius: 3)
                Image(systemName: iconName)
                    .gradientForeground(colors: [Color("pink-gradient-1"), Color("pink-gradient-2")])
                    .font(.system(size: 17, weight: .medium))
            }
        )
        .frame(width: 36, height: 36, alignment: .center)
        .padding([.vertical, .leading], 8)
    }
}

struct TextfieldIcon_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldIcon(iconName: "key", currentlyEditing: .constant(true))
    }
}
