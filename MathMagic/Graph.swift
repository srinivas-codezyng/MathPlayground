//
//  ContentView.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 05/02/21.
//

import SwiftUI

struct Graph: View {
    
    var body: some View {
        ZStack{
            GeometryReader{ geo in
                let scaleX:CGFloat = 100
                let scaleY:CGFloat = 100

                Rectangle().fill().foregroundColor(.white)
                geo.scaleGrid( xGrid: geo.scaleXGrid(by: scaleX * 0.1), yGrid: geo.scaleYGrid(by: scaleY * 0.1), color: Color.lightGreen)
                geo.scaleGrid( xGrid: geo.scaleXGrid(by: scaleX * 0.5), yGrid: geo.scaleYGrid(by: scaleY * 0.5), color: Color.semiLightGreen)
                geo.scaleGrid( xGrid: geo.scaleXGrid(by: scaleX), yGrid: geo.scaleYGrid(by: scaleY), color: Color.darkGreen)
              

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Graph()
    }
}
