//
//  Home.swift
//  Koan
//
//  Created by Yuan on 22/12/2022.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 0) {
                
                CommuWelcome()
                    .padding(.horizontal)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 0) {
                        
                        CommuBanner()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .padding(.horizontal)
                            .padding(.top, 30)
                        
                        CommuSearchBar()
                            .padding(.top, 30)
                            .padding(.horizontal)
                        
                        CommuTags()
                            .padding(.horizontal)
                            .padding(.top, 16)
                        
                        VStack(spacing: 20) {
                            
                            RoomItem()

                            RoomItem()

                            
                            RoomItem()
                            
                        }
                        .padding(.horizontal)
                        .padding(.top, 30)
                    }
                }
                // .ignoresSafeArea()
                .frame(maxWidth: .infinity)
                .background(Color("BG"))
                
            }
            
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
