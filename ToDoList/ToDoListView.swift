//
//  ContentView.swift
//  ToDoList
//
//  Created by Omar on 05/06/2023.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
    @Query var toDos: [ToDo ]
    @State private var sheetIsPresented = false
    @Environment (\.modelContext) var modelContext
    var body: some View {
        NavigationStack {
            List{
                ForEach(toDos) { toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo.item )
                    }
                    .font(.title2)

                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack{
                        DetailView(toDo: ToDo())
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ToDoListView()
                .modelContainer(for: ToDo.self, inMemory: true)
        }
    }
}
