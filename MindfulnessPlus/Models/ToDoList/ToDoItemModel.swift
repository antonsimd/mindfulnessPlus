//
//  ToDoItemModel.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 24/10/2024.
//

import Foundation
import SwiftData

@Model
class ToDoItemModel {
    @Attribute(.unique) public var id: UUID
    public var title: String
    public var isCompleted: Bool
    
    public init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
    }
}
