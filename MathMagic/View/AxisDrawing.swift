//
//  AxisDrawing.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import SwiftUI

struct AxisDrawing: View {
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                geo.scaleGrid( xGrid: [geo.xAxis], yGrid:[geo.yAxis], color: Color.red)

                ForEach(geo.axespoints){ point in
                    Text("\(Int(point.x == 0 ? point.y : point.x))")
                        .font(.title3)
                        .fontWeight(.bold)
                        .transformEffect(CGAffineTransform(scaleX: 1, y: -1))
                        .position(x: point.x, y: point.y)
                        .transformEffect(geo.axesTransform)
                }
            }
        }
    }
}

struct AxisDrawing_Previews: PreviewProvider {
    static var previews: some View {
        AxisDrawing()
    }
}
