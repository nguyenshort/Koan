//
//  GameCenter.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI

struct Vocabulary: View {
    
    @State var attrs: [String] = ["Writing", "Example", "Images"]
    
    fileprivate func AttrTag(title: String, icon: String, bg: Color) -> some View {
            Button {
                
            } label: {
                
                HStack(spacing: 4) {
                    Image(icon)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text(title)
                        .font(.custom(.appFont, size: 11))
                        .fontWeight(.semibold)
                }
                
            }
            .foregroundColor(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(bg)
            .borderDefault()
    }
    
    var body: some View {
        NavigationStack {
            
            VocabularySelector()
                .padding(.horizontal)

            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 0) {
                    
                    
                    HStack {
                        
                        Image("Doulingo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        VStack(alignment: .leading) {
                            
                            Text("The Oxford 3000™")
                                .font(.custom(.appFont, size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(.text)
                            
                            HStack {
                                AttrTag(title: "Writing", icon: "Test", bg: .accentColor)
                                
                                AttrTag(title: "Pronunciation", icon: "Communication", bg: .purple)

                            }
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    
                    
                    VStack {
                        
                        Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
                            .font(.custom(.appFont, size: 14))
                            .lineSpacing(4)
                            .foregroundColor(.textSecond)
                            .lineLimit(4)
                        
                    }
                    .padding(.top, 5)
                    
                    VStack {
                        
                        VocabularySummary()
                        
                    }
                    .padding(.top, 20)
                    
                    
                    VStack {
                        
                        VocabularyLearned()
                        
                    }
                    .padding(.top, 20)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct GameCenter_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
