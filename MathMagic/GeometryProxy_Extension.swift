//
//  GeometryProxy_Extension.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 06/02/21.
//

import Foundation
import SwiftUI

extension GeometryProxy {
    var width : CGFloat{
        size.width
    }
    
    var height : CGFloat{
        size.height
    }
    
    var quadrantWidth : CGFloat{
        width / 2.0
    }
    
    var quadrantHeight: CGFloat{
        height / 2.0
    }
    
    var scaleX : CGFloat {
        100.0
    }
    
    var scaleY : CGFloat {
        100.0
    }
    
    var leftX : CGFloat{
        floor(-quadrantWidth / scaleX) * scaleX
    }
    
    var rightX : CGFloat{
        ceil(quadrantWidth / scaleX) * scaleX
    }
    
    var leftY : CGFloat {
        0
    }
    
    var bottomX : CGFloat {
        0
    }

    var bottomY : CGFloat{
        floor(-quadrantHeight / scaleY) * scaleY
    }
    
    var topY : CGFloat {
        ceil(quadrantHeight / scaleY) * scaleY
    }
    
    var axes : [CGRect]{
        return []
    }
    
    var scaleXGrid: [CGRect]{
        scaleXGrid(by: scaleY)
    }
    
    var scaleYGrid: [CGRect]{
        scaleYGrid(by: scaleX)
    }
    
    func scaleXGrid(by amount:CGFloat)->[CGRect]{
        return stride(from: bottomY, to: topY, by: amount).map { (yValue) in
            CGRect(x: leftX, y: yValue, width: (rightX - leftX), height: 1)
        }
    }
    
    func scaleYGrid(by amount:CGFloat)->[CGRect]{
        return stride(from: leftX, to: rightX, by: amount).map { (xValue) in
            CGRect(x: xValue, y: bottomY, width: 1, height: (topY - bottomY))
        }
    }
    
    var xAxis: CGRect {
        CGRect(x: leftX, y: leftY, width: (rightX - leftX), height: 1)
    }
    
    var yAxis: CGRect {
        CGRect(x: bottomX,y: bottomY, width: 1, height: (topY - bottomY))
    }
    
    var axesTransform:CGAffineTransform {
        CGAffineTransform(translationX: 0, y: height).scaledBy(x: 1, y: -1).translatedBy(x: quadrantWidth, y: quadrantHeight)
    }
}

extension GeometryProxy {
    func scaleGrid(xGrid:[CGRect],yGrid:[CGRect],color:Color) -> some View {
        Path{ path in
            path.addRects(xGrid)
            path.addRects(yGrid)
        }.stroke( lineWidth: 1.0)
        .transform(axesTransform)
        .foregroundColor(color)
    }
}
