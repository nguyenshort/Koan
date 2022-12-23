//
//  ShadowModifiers.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct ShadowDefault: ViewModifier {
    
    func body(content: Content) -> some View {
        content
        .shadow(color: Color("ShadowGray").opacity(0.09), x: 10, y: 10, blur: 60)
    }
}

extension View {
    func shadowDefault() -> some View {
        modifier(ShadowDefault())
    }
}
