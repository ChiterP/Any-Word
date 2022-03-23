//
//  Any_WordApp.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 12/3/21.
//

import SwiftUI

@main
struct Any_WordApp: App {
//    let persistenceController = PersistenceController.shared
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            StartView()
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
//        .onChange(of: scenePhase) { _ in persistenceController.save() }
    }
}

