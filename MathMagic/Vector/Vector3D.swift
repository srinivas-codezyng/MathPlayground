//
//  Vector3D.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import Foundation

public enum Dimension {
    case x
    case y
    case z
}

public struct Vector3D<ValueType:Numeric> {
    private var x:ValueType = 0,y:ValueType = 0,z:ValueType = 0
    
    public init(x:ValueType,y:ValueType,z:ValueType) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public subscript(index: Dimension) -> ValueType {
        switch index {
            case .x:
                return x
            case .y:
                return y
            case .z:
                return z
        }
    }
}

extension Vector3D : ExpressibleByArrayLiteral {
    
    public init(arrayLiteral elements:ValueType...) {
        guard elements.count == 3 else {
            fatalError()
        }
        
        x = elements[0]
        y = elements[1]
        z = elements[2]

    }
}
