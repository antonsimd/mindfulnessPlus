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
