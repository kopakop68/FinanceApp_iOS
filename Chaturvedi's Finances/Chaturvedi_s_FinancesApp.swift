//
//  Chaturvedi_s_FinancesApp.swift
//  Chaturvedi's Finances
//
//  Created by Kopal Chaturvedi on 25/08/25.
//

import SwiftUI
import SwiftData

@main
struct Chaturvedi_s_FinancesApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
