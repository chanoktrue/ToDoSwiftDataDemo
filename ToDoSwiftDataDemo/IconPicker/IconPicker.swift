//
//  IconPicker.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI

struct IconPicker: View {
    
    @State var showIconView: Bool = false
    @Binding var colors: Bool
    var title: String
    @Binding var selection: String
    
    var body: some View {
        Button {
            showIconView.toggle()
        } label: {
            HStack {
                Text(title)
                Spacer()
                Image(systemName: selection)
                    .renderingMode(colors ? .original : .template)
                    .font(.title)
            }
            .padding(.horizontal)
            .tint(.primary)
            .font(.headline)
            .frame(height: 60)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
        }
        .sheet(isPresented: $showIconView, content: {
            IconPickerStyle(selectedIcon: $selection, color: $colors)
        })

    }
}

#Preview {
    IconPicker(colors: .constant(false), title: "title", selection: .constant("paperplane.circle.fill"))
}
