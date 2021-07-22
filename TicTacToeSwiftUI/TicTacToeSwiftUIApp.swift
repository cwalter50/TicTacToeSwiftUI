//
//  TicTacToeSwiftUIApp.swift
//  TicTacToeSwiftUI
//
//  Created by Christopher Walter on 7/22/21.
//

import SwiftUI

@main
struct TicTacToeSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
