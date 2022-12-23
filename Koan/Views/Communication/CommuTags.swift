//
//  CommuTags.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct CommuTags: View {
    
    @State var tags: [String] = ["Politics", "Sports", "Technology", "Science"]
    
    var body: some View {
        HStack(spacing: 35) {
            
            ForEach(tags, id: \.self) { tag in
                
                Text("#")
                    .foregroundColor(Color("Text2").opacity(0.5))
                + Text(tag)
                    .foregroundColor(Color("Text2"))
                
            }
            
        }
        .font(.custom("Inter", size: 12))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CommuTags_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
