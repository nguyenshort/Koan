//
//  VocabularySelector.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct VocabularySelector: View {
    var body: some View {
        Button {
            
        } label: {
            
            HStack(spacing: 10) {
                
                Text("Vocabularies")
                    .font(.custom(.appFont, size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.text)
                
                Spacer()
                
                Image("Filter")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.text)
                    .frame(width: 24)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)

        }
    }
}

struct VocabularySelector_Previews: PreviewProvider {
    static var previews: some View {
        VocabularySelector()
    }
}
