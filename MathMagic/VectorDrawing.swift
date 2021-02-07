//
//  VectorDrawing.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import SwiftUI

extension CGPoint {
    var ellipse:CGRect {
        CGRect(x: x - 5, y: y - 5 , width: 10, height: 10)
    }
}

struct VectorDrawing: View {
    @EnvironmentObject var viewModel:VectorViewModel
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
