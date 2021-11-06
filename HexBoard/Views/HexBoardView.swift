//
//  ContentView.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

struct HexBoardView: View {
    @EnvironmentObject var hexBoard: HexBoard
    
    var body: some View {
            
            VStack {
                HStack {
                    Key(letter: "A", keyType: .letterKey)
                    Key(letter: "1", keyType: .numberKey)
                    Key(letter: "2", keyType: .numberKey)
                    Key(letter: "3", keyType: .numberKey)
                    Key(letter: "D", keyType: .letterKey)
                }
                HStack {
                    Key(letter: "B", keyType: .letterKey)
                    Key(letter: "4", keyType: .numberKey)
                    Key(letter: "5", keyType: .numberKey)
                    Key(letter: "6", keyType: .numberKey)
                    Key(letter: "E", keyType: .letterKey)
                }
                HStack {
                    Key(letter: "C", keyType: .letterKey)
                    Key(letter: "7", keyType: .numberKey)
                    Key(letter: "8", keyType: .numberKey)
                    Key(letter: "9", keyType: .numberKey)
                    Key(letter: "F", keyType: .letterKey)
                }
                HStack {
                    Key(letter: "<", keyType: .specialKey)
                    Key(letter: "0", keyType: .numberKey)
                    Key(letter: "intro", keyType: .specialKey)

                }
                Spacer()
            }
            .padding()
            .frame(width: UIScreen.screenWidth, height: hexBoard.height)
            .background(.secondary)
            .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
            .offset(y: hexBoard.show ? (UIScreen.screenHeight / 2) - (hexBoard.height / 2) : UIScreen.screenHeight)
    }
}

struct HexBoardView_Previews: PreviewProvider {
    static var previews: some View {
        HexBoardView()
            .environmentObject(HexBoard())
    }
}
