//
//  Key.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

struct Key: View {
    var letter: String
    var keyType: KeyType

    @EnvironmentObject var hexBoard: HexBoard
    
    var body: some View {
        Button {
            switch letter {
            case "<":
                if hexBoard.text.count >= 1 {
                    hexBoard.text.removeLast()
                }
            case "intro":
                withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                    hexBoard.showKeyboard.toggle()
                }
            default:
                hexBoard.text.append(letter)
            }
        } label: {
            Text(letter)
                .foregroundColor(.primary)
                .frame(width: keyType == .letterKey ? 40 : keyType == .specialKey ? 106 : 60,
                       height: 40)
                .keyStyle(keyType: keyType)
                .shadowStyle()
        }
    }
}

struct Key_Previews: PreviewProvider {
    static var previews: some View {
        Key(letter: "A", keyType: .letterKey)
            .environmentObject(HexBoard())
    }
}
