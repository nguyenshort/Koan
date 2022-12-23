//
//  CommuWelcome.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct CommuWelcome: View {
    var body: some View {
        
        HStack {
            
            RoundedRectangle(cornerRadius: 12)
                .fill(Color("Gray"))
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                
                Text("Welcome Back!")
                    .font(.custom(.appFont, size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.text)
                
                Text("Monday, 3 January")
                    .font(.custom(.appFont, size: 12))
                    .foregroundColor(Color.textSecond)
                
            }
            
            Spacer()
            
            Button {
                
            } label: {
                
                Image("Notification")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("Text2"))
                
            }
            .frame(width: 26, height: 26)
            
        }
        
    }
}

struct CommuWelcome_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
