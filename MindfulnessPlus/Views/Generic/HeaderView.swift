//
//  MainMenuHeaderView.swift
//  MindfulnessPlus
//
//  Created by Anton Simdyankin on 19/12/2023.
//

import SwiftUI

struct HeaderView: View {
    let foregroundColor: Color
    var titleText: String = "Mindfulness+"
    
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(foregroundColor)
                .rotationEffect(Angle(degrees: 5))
                .frame(width: UIScreen.main.bounds.width * 2, height: 200)
            
            Text(titleText)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color.white)
                .padding(.top, 70)
        })
        .offset(y: -100)
    }
}

#Preview {
    HeaderView(foregroundColor: .accentColor)
}
