//
//  MathMagicApp.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 05/02/21.
//

import SwiftUI

@main
struct MathMagicApp: App {
    @ObservedObject private var viewModel = VectorViewModel()

    var body: some Scene {
        WindowGroup {
            ZStack{
                Graph()
                AxisDrawing()
                VectorDrawing().environmentObject(viewModel)
            }
        }
    }
}
