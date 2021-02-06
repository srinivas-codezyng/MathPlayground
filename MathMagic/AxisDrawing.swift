//
//  AxisDrawing.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import SwiftUI

struct AxisDrawing: View {
    var body: some View {
        ZStack{
            GeometryReader{ geo in
    //            let scaleX:CGFloat = 100
    //            let scaleY:CGFloat = 100
                geo.scaleGrid( xGrid: [geo.xAxis], yGrid:[geo.yAxis], color: Color.red)
            }
        }
        
    }
}

struct AxisDrawing_Previews: PreviewProvider {
    static var previews: some View {
        AxisDrawing()
    }
}
