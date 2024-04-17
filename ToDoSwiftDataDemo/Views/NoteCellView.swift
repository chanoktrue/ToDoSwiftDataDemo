//
//  NoteCellView.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI

struct NoteCellView: View {
    
    let note: Note
    
    var body: some View {
        HStack {
            Image(systemName: note.icon)
                .renderingMode(note.iconColor ? .original : .template)
                .frame(width: 40, alignment: .leading)
            Text(note.title)
                .strikethrough(note.isComplete, color: .primary)
            Spacer()
            Image(systemName: note.isComplete ? "checkmark.circle.fill" : "circle")
        }
    }
}

//#Preview {
//    NoteCellView(note: Note(id: UUID(), icon: "visionpro", title: "visionpro", isComplete: true, iconColor: true))
//}
