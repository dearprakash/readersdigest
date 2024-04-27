//
//  ReadersDigestApp.swift
//  ReadersDigest
//
//  Created by Prakash Rajendran on 2024-04-27.
//

import SwiftUI

@main
struct ReadersDigestApp: App {
    
    @StateObject var dataController = DataController()
    @State private var columnVisibility = NavigationSplitViewVisibility.all

    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .navigationSplitViewStyle(.balanced)
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
        }
    }
}
