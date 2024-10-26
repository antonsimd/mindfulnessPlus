//
//  ToDoListMainView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 21/12/2023.
//

import SwiftUI

struct ToDoListMainView: View {
    @State var items: [ToDoItemModel] = [
        ToDoItemModel(title: "First item"),
        ToDoItemModel(title: "Second item"),
        ToDoItemModel(title: "Third item"),
    ]
    
    var body: some View {
        VStack {
            HeaderView(foregroundColor: .brown, titleText: "To Do")
            
            ScrollView {
                ForEach(items) { item in
                    Text(item.title)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                }
            }
            Spacer()
        }
        .offset(y: -35)
    }
}

// wrap this in a preview
#Preview {
    ToDoListMainView()
        .offset(y: 35)
}
