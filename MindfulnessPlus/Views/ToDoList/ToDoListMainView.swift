//
//  ToDoListMainView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 21/12/2023.
//

import SwiftUI

struct ToDoListMainView: View {
    
    @State var items: [ToDoListItemModel] = [
        ToDoListItemModel(title: "First item", isCompleted: true),
        ToDoListItemModel(title: "Second item", isCompleted: false),
        ToDoListItemModel(title: "Third item", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ToDoListItemRowView(item: item)
            }
            .onDelete(perform: { indexSet in
                
            })
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("To do today 🗒️")
        .toolbar {
//            ToolbarItem(placement: .topBarLeading) {
//                EditButton()
//            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("+") {
                    ToDoListAddView()
                }
                .font(.largeTitle)
                .fontWeight(.light)
            }
        }
    }
}

#Preview {
    NavigationView {
        ToDoListMainView()
    }
}
