//
//  HexBoard.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI
import Combine

enum KeyType: String, CaseIterable {
    case numberKey
    case letterKey
    case specialKey
}

final class HexBoard: ObservableObject {
    @Published var show: Bool
    @Published var text: String

    var height: CGFloat

    init() {
        self.height = 250
        self.text = ""
        self.show = false
    }
}
