//
//  ErfolgeApp.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 22.02.24.
//

import SwiftUI
import SwiftData

@main
struct ErfolgeApp: App {
   
 
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Tag.self ,
            Frage.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            TabBarView()
           // TextView()
                }
        .modelContainer(sharedModelContainer)
    }
}
