//
//  ToDoListItemModel.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 10/2/2024.
//

import Foundation


struct ToDoListItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
