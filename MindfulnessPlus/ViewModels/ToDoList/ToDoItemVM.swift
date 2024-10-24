//
//  ToDoItemVM.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 24/10/2024.
//

import Foundation

public class ToDoItemVM: ObservableObject {
    @Published var title: String
    @Published var isCompleted: Bool
    @Published var items: [ToDoItemModel] = []
    
    public init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
    
    public func toggleCompleted() {
        isCompleted.toggle()
    }
    
    public func delete(id: UUID) {
        items.removeAll(where: { $0.id == id })
    }
    
    public func newItem(title: String) {
        items.append(ToDoItemModel(title: title))
    }
}
