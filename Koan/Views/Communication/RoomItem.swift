//
//  RoomItem.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI
import SwiftUIX

struct RoomItem: View {
    var body: some View {
    
        IntrinsicGeometryReader { proxy in
            
            VStack(spacing: 0) {
                VStack {
                    Image("bg")
                        .resizable()
                        .scaledToFill()
                }
                .frame(maxHeight: proxy.size.width * 0.4)
                .clipped()
                
                VStack(spacing: 0) {
                    
                    HStack {
                        
                        Text("TODAY")

                        Text("6:00 AM")
                            .foregroundColor(Color.accentColor)
                        
                    }
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    
                    Text("Koki Matsuno")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: proxy.size.width * 0.4)
            }
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(maxWidth: .infinity)
        
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
