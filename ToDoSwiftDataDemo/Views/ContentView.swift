//
//  ContentView.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var content
    @State var showSlideView: Bool = false
    @State var showAddView: Bool = false
    
    //SwiftData
    @Query var notes: [Note]
    
    var body: some View {
        VStack(spacing: 0) {
            TopView(showSlideView: $showSlideView)
            List {
                ForEach(notes) { note in
                    NoteCellView(note: note)
                        .onTapGesture {
                            saveNote(note: note)
                        }
                        .swipeActions(edge: .trailing, allowsFullSwipe: true){
                            Button(action: {
                                withAnimation {
                                    deleteNote(note: note)
                                }
                            }, label: {
                                Image(systemName: "trash")
                            })
                            .tint(.clear)
                        }
                }
                .listRowSeparator(.hidden)
                .ignoresSafeArea()
            }
            .listRowSpacing(-8)
            .listStyle(.inset)
            .safeAreaPadding(.top, 10)
        }
        .overlay(alignment: .bottomTrailing) {
            Button(action: {
                showAddView.toggle()
            }, label: {
                Image(systemName: "plus")
                    .font(.title)
                    .padding(20)
                    .background(.ultraThinMaterial, in: Circle())
            })
        }
    }
    
    func saveNote(note: Note) {
        note.isComplete.toggle()
        do{
            try content.save()
        }catch{
            print("Error deleting note: \(error.localizedDescription)")
        }
    }
    
    func deleteNote(note: Note) {
        content.delete(note)
        do{
            try content.save()
        }catch {
            print("Error deleting note: \(error.localizedDescription)")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Note.self])
}
