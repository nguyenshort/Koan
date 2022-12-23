//
//  FontModifiers.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct AdjustFont: ViewModifier {
    
    var font: String = .appFont
    
    func body(content: Content) -> some View {
        content
            .font(.custom(.appFont, size: 15))
    }
}

extension View {
    func adjustFont() -> some View {
        modifier(BorderDefault())
    }
}
