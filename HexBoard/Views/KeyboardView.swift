//
//  ContentView.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

struct KeyboardView: View {
    @Binding var text: String
    @Binding var showKeyboard: Bool
    
    var body: some View {
            
            VStack {
                HStack {
                    Key(letter: "A", keyType: .letterKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "1", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "2", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "3", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "D", keyType: .letterKey, text: $text, showKeyboard: $showKeyboard)
                }
                HStack {
                    Key(letter: "B", keyType: .letterKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "4", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "5", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "6", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "E", keyType: .letterKey, text: $text, showKeyboard: $showKeyboard)
                }
                HStack {
                    Key(letter: "C", keyType: .letterKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "7", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "8", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "9", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "F", keyType: .letterKey, text: $text, showKeyboard: $showKeyboard)
                }
                HStack {
                    Key(letter: "<", keyType: .specialKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "0", keyType: .numberKey, text: $text, showKeyboard: $showKeyboard)
                    Key(letter: "intro", keyType: .specialKey, text: $text, showKeyboard: $showKeyboard)

                }
                Spacer()
            }
            .padding()
            .frame(width: UIScreen.screenWidth, height: keyboardHeight)
            .background(.secondary)
            .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(text: .constant(""), showKeyboard: .constant(true))
    }
}
