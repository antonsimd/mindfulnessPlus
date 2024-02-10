//
//  ToDoListItemRowView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 10/2/2024.
//

import SwiftUI

struct ToDoListItemRowView: View {
    
    @State var item: ToDoListItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            
            Spacer()
        }
    }
}

#Preview {
    Group {
        ToDoListItemRowView(item: ToDoListItemModel(title: "Item 1", isCompleted: true))
        ToDoListItemRowView(item: ToDoListItemModel(title: "Item 2", isCompleted: false))
    }
}
