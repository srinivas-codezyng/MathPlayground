//
//  VectorViewModel.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import SwiftUI

class VectorCalculator: ObservableObject {
    @Published var referenceX = "100"
    @Published var referenceY = "100"

    @Published var referencePoint:Vector3D<Float> = [200,200,0]
}
