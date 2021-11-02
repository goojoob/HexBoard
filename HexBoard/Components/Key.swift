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
    
    @Binding var text: String
    @Binding var showKeyboard: Bool
    
    @State var clicked: Bool = false
    
    var body: some View {
        Button {
            switch letter {
            case "<":
                if text.count >= 1 {
                    text.removeLast()
                }
            case "intro":
                withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                    showKeyboard.toggle()
                }
            default:
                if text.count < 6 {
                    text.append(letter)
                }
                
                if text.count >= 6 {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                        showKeyboard.toggle()
                    }
                }
            }
        } label: {
            Text(letter)
                .foregroundColor(Color.primary)
                .frame(width: keyType == .letterKey ? 40 : keyType == .specialKey ? 106 : 60,
                       height: 40)
                .keyStyle(keyType: keyType)
                .shadowStyle()
        }
    }
}

struct Key_Previews: PreviewProvider {
    static var previews: some View {
        Key(letter: "A", keyType: .letterKey, text: .constant(""), showKeyboard: .constant(true), clicked: false)
    }
}
