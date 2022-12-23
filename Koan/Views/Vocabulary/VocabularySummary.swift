//
//  VocabularySummary.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct VocabularySummary: View {
    
    @State var levels: [VocabularyLevel] = [
        VocabularyLevel(name: "Level 1", color: .accentColor, count: 200)
    ]
    
    var body: some View {
        VStack {
            
            HStack {
                
                Text("Summary")
                    .font(.custom(.appFont, size: 20))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            
        }
    }
}


struct VocabularyLevel {
    var name: String
    var color: Color
    var count: Int
}

struct VocabularySummary_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
