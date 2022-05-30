//
//  GradientText.swift
//  Advanced Development in SwiftUI
//
//  Created by Asliddin Rasulov on 30/05/22.
//

import SwiftUI

struct GradientText: View {
    var text: String = ""
    
    var body: some View {
        Text(text)
            .gradientForeground(colors: [Color("pink-gradient-1"), Color("pink-gradient-2")])
    }
}

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        self
            .overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
            
    }
}
