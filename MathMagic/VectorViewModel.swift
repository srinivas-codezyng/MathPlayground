//
//  VectorViewModel.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import SwiftUI

class VectorViewModel: ObservableObject {
    @Published var referencePoint:Vector3D<Float> = [200,200,0]
    
}
