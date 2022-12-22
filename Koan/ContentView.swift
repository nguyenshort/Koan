//
//  ContentView.swift
//  Koan
//
//  Created by Yuan on 22/12/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var tabBar: MainTabEnum = .Communication
    @Namespace var animation
    
    //Hiding Tab Bar..
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0){
            //Tab View...
            TabView(selection: $tabBar) {
                
                Home()
                    .tag(MainTabEnum.Communication)
                
                Color.green
                    .tag(MainTabEnum.Vocabulary)
                
                Color.pink
                    .tag(MainTabEnum.Test)
                
                Color.red
                    .tag(MainTabEnum.Profile)
            }
            
            HStack(spacing: 0) {
                
                TabMainItem(tab: .Communication)
                TabMainItem(tab: .Vocabulary)
                TabMainItem(tab: .Test)
                TabMainItem(tab: .Profile)
                
            }
            .frame(height: 80)
            .padding(.bottom)
            
        }
        .ignoresSafeArea()
    }
    
    private func TabMainItem(tab: MainTabEnum) -> some View {
        ZStack {
            
            Button {
                
                withAnimation(.spring()) {
                    tabBar = tab
                }
                
            } label: {
                
                Image(tab.rawValue)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(tabBar ==  tab ? .white : .gray)
                
            }
            .frame(width: 26, height: 26)
            .zIndex(2)
            
            if tabBar == tab {
                Circle()
                    .fill(Color.accentColor)
                    .frame(width: 45, height: 45)
                    .shadow(color: Color.accentColor.opacity(0.5), radius: 1)
                    .zIndex(1)
                    .matchedGeometryEffect(id: "MAIN_TAB", in: animation)
            }
            
        }
        .frame(maxWidth: .infinity)

    }
}

enum MainTabEnum: String {
    case Communication = "Communication"
    case Vocabulary = "Vocabulary"
    case Test = "Test"
    case Profile = "Profile"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
