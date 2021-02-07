//
//  VectorDrawing.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import SwiftUI

extension CGPoint {
    var ellipse:CGRect {
        let diameter:CGFloat = 20
        return CGRect(x: x - diameter * 0.5, y: y - diameter * 0.5 , width: diameter, height: diameter)
    }
}

struct VectorDrawing: View {
    @EnvironmentObject var viewModel:VectorCalculator
    var body: some View {
        GeometryReader{ geo in
            Path{ path in
                let referencePoint = CGPoint(x: CGFloat(viewModel.referencePoint[.x]), y: CGFloat(viewModel.referencePoint[.y]))
                path.move(to: CGPoint(x: referencePoint.x, y: referencePoint.y))
                path.addEllipse(in: referencePoint.ellipse)
            }
            .fill(Color.red)
            .transformEffect(geo.axesTransform)

        }
    }
}

struct VectorDrawing_Previews: PreviewProvider {
    static var previews: some View {
        VectorDrawing()
    }
}
