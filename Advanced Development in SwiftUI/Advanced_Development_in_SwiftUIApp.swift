//
//  Advanced_Development_in_SwiftUIApp.swift
//  Advanced Development in SwiftUI
//
//  Created by Asliddin Rasulov on 30/05/22.
//

import SwiftUI

@main
struct Advanced_Development_in_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
