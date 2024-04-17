//
//  ToDoSwiftDataDemoApp.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI

@main
struct ToDoSwiftDataDemoApp: App {
    
    @Environment(\.modelContext) var modelContent
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [Note.self])
        }
    }
}
