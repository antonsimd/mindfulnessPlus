//
//  ToDoItemModel.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 24/10/2024.
//

import Foundation
import SwiftData

<<<<<<< HEAD
public class ToDoItemModel: Codable, Identifiable {
    @Attribute(.unique) public var id: UUID
    public var title: String
    public var isCompleted: Bool
    
    public init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
    }
=======
final public class ToDoItemModel: Codable, Identifiable {
    @Attribute(.unique) public var id: UUID
    public var title: String
    public var isCompleted: Bool
>>>>>>> f935c2e44a542752a7de4c3a625cdbbfe3a2d590
}
