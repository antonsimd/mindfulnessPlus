//
//  ToDoListMainView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 21/12/2023.
//

import SwiftUI

struct ToDoListMainView: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(Color.green)
                Text("Sample text")
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("To do today")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Add") {
                    
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ToDoListMainView()
    }
}
