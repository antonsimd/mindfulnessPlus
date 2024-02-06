//
//  MainMenu.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 19/12/2023.
//

import SwiftUI

struct MainMenuView: View {
    
    let text: ModeModel = ModeModel(title: "To Do list", style: AnyShapeStyle(Color.blue), destination: AnyView(ToDoListMainView()))
    let text2: ModeModel = ModeModel(title: "Gratitude", style: AnyShapeStyle(Color.mint), destination: AnyView(GratitudeMainView()))
    
    var body: some View {
        NavigationView(content: {
            ZStack(content: {
                VStack {
                    // Mindfulness exercises
                    ScrollView {
                        VStack {
                            NavigationLink {
                                ToDoListMainView()
                            } label: {
                                MainMenuButtonView(modeType: text)
                            }
                            
                            MainMenuButtonView(modeType: text2)
                        }
                    }
                    .padding(.top, 70)
                    
                    // Bottom bar
                    
                    
                    Spacer()
                }
                
                // Header
                VStack {
                    HeaderView(foregroundColor: .cyan)
                    
                    Spacer()
                }
            })
            
        })
    }
}

#Preview {
    MainMenuView()
}
