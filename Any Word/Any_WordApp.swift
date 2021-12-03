//
//  Any_WordApp.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 12/3/21.
//

import SwiftUI

@main
struct Any_WordApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
