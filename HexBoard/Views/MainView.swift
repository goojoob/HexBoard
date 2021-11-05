//
//  MainView.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var hexBoard: HexBoard
    
    var body: some View {
        ZStack {
            Color.teal
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(hexBoard.text)
                    .bold()
                    .frame(width: 200, height: 200)

                Button {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                        hexBoard.showKeyboard.toggle()
                    }
                } label: {
                    Text("Click Me")
                }
                
                Spacer()
            }

            KeyboardView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(HexBoard())
    }
}
