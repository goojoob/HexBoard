//
//  MainView.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

struct MainView: View {
    @State var showKeyboard: Bool = false
    @State private var text: String = ""
    
    var body: some View {
        ZStack {
            Color.teal
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(text)
                    .bold()
                    .frame(width: 200, height: 200)

                Button {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                        showKeyboard.toggle()
                    }
                } label: {
                    Text("Click Me")
                }
                
                Spacer()
            }

            KeyboardView(text: $text, showKeyboard: $showKeyboard)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
