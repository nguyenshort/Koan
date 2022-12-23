//
//  BorderModifiers.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct BorderDefault: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

extension View {
    func borderDefault() -> some View {
        modifier(BorderDefault())
    }
}
