//
//  NoteModel.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI
import SwiftData

@Model
class Note: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var isComplete: Bool
    var iconColor: Bool
    
    init(id: UUID = UUID(), icon: String, title: String, isComplete: Bool, iconColor: Bool) {
        self.id = id
        self.icon = icon
        self.title = title
        self.isComplete = isComplete
        self.iconColor = iconColor
    }
}
