//
//  ContentView.swift
//  ToDoList
//
//  Created by Omar on 05/06/2023.
//

import SwiftUI

struct ToDoListView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(0..<100, id: \.self) { number in
                        NavigationLink {
                            DetailView(passedNumber: number)
                        } label: {
                            Text("Item Number \(number)")
                        }
                    }
                }
                .navigationTitle("Titel")
                .navigationBarTitleDisplayMode(.automatic)
                .listStyle(.plain)
                
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
