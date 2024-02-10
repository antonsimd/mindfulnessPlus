//
//  MindfulnessPlusApp.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 19/12/2023.
//

import SwiftUI

@main
struct MindfulnessPlusApp: App {
    
    @StateObject var todoListViewModel: ToDoListViewModel = ToDoListViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainMenuView()
        }
    }
}
