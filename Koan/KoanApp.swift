//
//  KoanApp.swift
//  Koan
//
//  Created by Yuan on 22/12/2022.
//

import SwiftUI

@main
struct KoanApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
