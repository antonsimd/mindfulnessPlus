//
//  MainMenuButtonView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 19/12/2023.
//

import SwiftUI

struct MainMenuButtonView: View {
    
    let modeType: ModeModel
    
    var body: some View {

        NavigationLink {
            modeType.destination
        } label: {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(modeType.style)
                    .frame(width: 350, height: 100)
                    .shadow(radius: 10)
                    .padding()
                    
                Text(modeType.title)
                    .foregroundStyle(Color.white)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 200)
            })
        }
            .offset(y: 50)
    }
}

//#Preview {
//    
//    let type: ModeModel = ModeModel(title: "Test", style: AnyShapeStyle(Color.blue))
//    
//    var previews: any View {
//        MainMenuButtonView(modeType: type)
//    }
//}
