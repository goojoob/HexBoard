//
//  HexBoardApp.swift
//  HexBoard
//
//  Created by Goojoob.dev on 2/11/21.
//

import SwiftUI

@main
struct HexBoardApp: App {
    @StateObject private var hexBoard = HexBoard()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(hexBoard)
        }
    }
}
