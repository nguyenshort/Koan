//
//  CommuSearchBar.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct CommuSearchBar: View {
    var body: some View {
        HStack {
            
            Text("Search for host...")
                .font(.custom("Inter", size: 12))
                .foregroundColor(Color("Text2"))
                .offset(x: 16)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 46)
        .overlay(alignment: .trailing) {
            
            Button {
                
            } label: {
                Image("Filter")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 23, height: 23)
            }
            .frame(width: 46, height: 46)
            .background(Color.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadowDefault()
    }
}

struct CommuSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
