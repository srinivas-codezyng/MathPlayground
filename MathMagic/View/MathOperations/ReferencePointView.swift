//
//  ReferencePointView.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 07/02/21.
//

import SwiftUI

struct ReferencePointView: View {
    @EnvironmentObject var calculatorView:VectorCalculator
    var body: some View {
        VStack(alignment:HorizontalAlignment.leading){
            Text("Start Point:")
            HStack{
                Text("X:")
                TextField("X", value: $calculatorView.referencePoint.x, formatter: NumberFormatter())
            }
            HStack{
                Text("Y:")
                TextField("Y", value: $calculatorView.referencePoint.y, formatter: NumberFormatter())
            }
        }
    }
}

struct ReferencePointView_Previews: PreviewProvider {
    static var previews: some View {
        ReferencePointView()
    }
}
