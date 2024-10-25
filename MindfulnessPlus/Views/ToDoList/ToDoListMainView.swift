//
//  ToDoListMainView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 21/12/2023.
//

import SwiftUI

struct ToDoListMainView: View {
    var body: some View {
        VStack {
            HeaderView(foregroundColor: .brown, titleText: "To Do")
            
            ScrollView {
<<<<<<< HEAD
                
=======
                MainMenuButtonView(modeType: MainMenuView)
>>>>>>> f935c2e44a542752a7de4c3a625cdbbfe3a2d590
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
