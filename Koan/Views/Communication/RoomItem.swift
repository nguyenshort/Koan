//
//  RoomItem.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI
import SwiftUIX

struct RoomItem: View {
    
    @State var avatars: [String] = ["Avatar_1", "Avatar_2", "Avatar_3", "Avatar_4"]
    
    var body: some View {
    
        VStack(alignment: .leading, spacing: 20) {
            
            HStack(spacing: 14) {
                
                Button {
                    
                } label: {
                    
                    Image("Avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                        .borderDefault()
                        .shadowDefault()
                    
                }
                
                
                Text("Practice Makes Perfect")
                    .font(.custom(.appFont, size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.text)
                
                Spacer()
                
                Image("Send")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18)
                    .foregroundColor(.secondary)
                
            }
            
            HStack {
                
                ForEach(avatars, id: \.self) { avatar in
                    
                    Button {
                        
                    } label: {
                        Image(avatar)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .borderDefault()
                            .shadowDefault()
                    }
                    
                }
                
            }
            
            HStack(spacing: 0) {
                
                Button {
                    
                } label: {
                    
                    Text("Pre Intermediate")
                        .font(.custom(.appFont, size: 10))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(.accentColor)
                        .borderDefault()
                    
                }
                
                Spacer()
                
                Image("Calendar")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18)
                    .foregroundColor(.secondary)
                
                Text("20:10 23/12")
                    .font(.custom(.appFont, size: 12))
                    .foregroundColor(.secondary)
                    .padding(.leading, 5)
                
                
            }
            
        }
        .padding(18)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        .borderDefault()
        .shadowDefault()
        
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
