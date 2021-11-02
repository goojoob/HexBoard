//
//  ExtensionView.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

extension View {
    func keyStyle(keyType: KeyType) -> some View {
        modifier(KeyStyle(keyType: keyType))
    }
    
    func shadowStyle(opacity: CGFloat = 0.2, radius: CGFloat = 2.0, x: CGFloat = 0.0, y: CGFloat = 3.0) -> some View {
        modifier(ShadowStyle(opacity: opacity, radius: radius, x: x, y: y))
    }
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
