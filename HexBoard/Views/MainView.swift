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
                TextField("Text", text: $hexBoard.text)
                    .frame(width: 200, height: 200)
                    .padding()
                
                Text(hexBoard.text)
                    .bold()
                    .padding()
                
                Button {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                        hexBoard.show.toggle()
                    }
                } label: {
                    Text("Click Me")
                }
                
                Spacer()
            }

            HexBoardView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(HexBoard())
    }
}
