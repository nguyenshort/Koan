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
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 0) {
                    
//                    CommuTab()
//
//
//                    CommuBanner()
//                        .clipShape(RoundedRectangle(cornerRadius: 15))
//                        .padding(.horizontal)
//                        .padding(.top, 16)
                    
                    CommuWelcome()
                        .padding(.horizontal)
                    
                    CommuSearchBar()
                        .padding(.top, 30)
                        .padding(.horizontal)
                    
                    CommuTags()
                        .padding(.horizontal)
                        .padding(.top, 16)
                }
            }
            // .ignoresSafeArea()
            .frame(maxWidth: .infinity)
            .background(Color("BG"))
            
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
