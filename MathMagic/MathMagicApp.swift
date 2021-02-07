//
//  MathMagicApp.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 05/02/21.
//

import SwiftUI

@main
struct MathMagicApp: App {
    @ObservedObject private var viewModel = VectorCalculator()

    var body: some Scene {
        
        WindowGroup {
            GeometryReader{ geo in
                HStack{
                    ZStack{
                        GeometryReader{ geo in
                            Group{
                                Graph()
                                AxisDrawing()
                                VectorDrawing().environmentObject(viewModel)
                            }
                            .clipped()
                        }.background(Color.red)
                    }
                    MathOperationView().environmentObject(viewModel)
                        .frame(width: 200)
                        .padding()
                }
            }
           
        }
    }
}
