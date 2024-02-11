//
//  ToDoListViewModel.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 10/2/2024.
//

import Foundation

class ToDoListViewModel: ObservableObject {
    
    @Published var items: [ToDoListItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ToDoListItemModel(title: "First item", isCompleted: true),
            ToDoListItemModel(title: "Second item", isCompleted: false),
            ToDoListItemModel(title: "Third item", isCompleted: true)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItems(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem: ToDoListItemModel = ToDoListItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
}
