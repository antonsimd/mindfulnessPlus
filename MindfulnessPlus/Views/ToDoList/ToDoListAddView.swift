//
//  ToDoListAddView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 10/2/2024.
//

import SwiftUI

struct ToDoListAddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var listViewModel: ToDoListViewModel = ToDoListViewModel()
    @State var textFieldText: String = "";
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .frame(height: 80)
                    .background(Color("TextInputBackground"))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save")
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 80)
                        .background(Color("AccentColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                })
            }
            .padding()
        }
        .navigationTitle("Add an Item 🖋️")
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView(content: {
        ToDoListAddView()
    })
}
