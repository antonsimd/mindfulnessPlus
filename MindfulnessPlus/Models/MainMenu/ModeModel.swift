//
//  ModeModel.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 21/12/2023.
//

import SwiftUI
import Foundation

struct ModeModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let style: AnyShapeStyle
    let destination: AnyView
}
