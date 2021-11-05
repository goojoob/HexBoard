//
//  HexBoard.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import Foundation
import SwiftUI
import Combine

enum KeyType: String, CaseIterable {
    case numberKey
    case letterKey
    case specialKey
}

final class HexBoard: ObservableObject {
    @Published var showKeyboard: Bool = false
    @Published var text: String = ""
    
    var keyboardHeight: CGFloat = 250
}