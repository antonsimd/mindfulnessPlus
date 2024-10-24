//
//  ToDoItemModel.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 24/10/2024.
//

import Foundation
import SwiftData

final public class ToDoItemModel: Codable, Identifiable {
    @Attribute(.unique) public var id: UUID
    public var title: String
    public var isCompleted: Bool
}
