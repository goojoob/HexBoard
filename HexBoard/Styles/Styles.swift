//
//  Styles.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

struct KeyStyle: ViewModifier {
    var keyType: KeyType
    
    func body(content: Content) -> some View {
        content
            .font(.system(.body, design: .monospaced))
            .minimumScaleFactor(0.1)
            .background(keyType == .letterKey ? .ultraThickMaterial : keyType == .numberKey ? .regularMaterial : .ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct ShadowStyle: ViewModifier {

    var opacity: CGFloat
    var radius: CGFloat
    var x: CGFloat
    var y: CGFloat

    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(opacity), radius: radius, x: x, y: y)
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
