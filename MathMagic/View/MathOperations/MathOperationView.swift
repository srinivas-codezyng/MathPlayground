//
//  MathOperationView.swift
//  MathMagic
//
//  Created by Srinivas Prabhu G on 07/02/21.
//

import SwiftUI

struct MathOperationView: View {
    
    @EnvironmentObject var viewModel : VectorCalculator
    
    var body: some View {
        VStack{
            ReferencePointView()
            Spacer()
        }
    }
}

struct MathOperationView_Previews: PreviewProvider {
    static var previews: some View {
        MathOperationView().environmentObject(VectorCalculator())
    }
}
