//
//  NewNoteView.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI
import SwiftData

struct NewNoteView: View {
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    @State var text = ""
    @State var icon = ""
    @State var iconColor = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .padding()
                    .background(.ultraThinMaterial, in: Circle())
            })
            .padding(.top, 30)
            
            TextField

        }
    }
}

#Preview {
    NewNoteView()
}
