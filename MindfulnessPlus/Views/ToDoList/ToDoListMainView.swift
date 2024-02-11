//
//  ToDoListMainView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 21/12/2023.
//

import SwiftUI

struct ToDoListMainView: View {
    
    @StateObject var listViewModel: ToDoListViewModel = ToDoListViewModel()
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ToDoListItemRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItems)
            .onMove(perform: listViewModel.moveItems)
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("To do today 🗒️")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("+") {
                    ToDoListAddView(listViewModel: listViewModel)
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
