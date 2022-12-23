//
//  VocabularyLearned.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct VocabularyLearned: View {
    var body: some View {
        
        VStack {
            
            HStack {
                
                Text("Vocabularies Learned")
                    .font(.custom(.appFont, size: 20))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Image("Filter")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.textSecond)
                    .frame(width: 20)
                
            }
            
        }
        
    }
}

struct VocabularyLearned_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
