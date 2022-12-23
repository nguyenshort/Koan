//
//  CommuTab.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct CommuTab: View {
    var body: some View {
        HStack(spacing: 0) {
            
            NavButton(icon: "Category")
            
            Spacer()
            
            NavButton(icon: "Add User")
            
//            NavButton(icon: "Search")
//                .padding(.leading, 16)

        }
        .padding(.horizontal)
        .overlay {
            Image("logo")
                .resizable()
                .scaledToFit()
        }
    }
    
    fileprivate func NavButton(icon: String) -> some View {
        return Button {
            
        } label: {
            
            Image(icon)
                //.renderingMode(.template)
                .resizable()
                .scaledToFit()
            
        }
        .frame(width: 26, height: 26)
    }
}

struct CommuTab_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
