//
//  AxisContainer.swift
//  CoreMotionTutorial
//
//  Created by thaxz on 14/05/23.
//

import SwiftUI

struct AxisContainer: View {
    var x: String = ""
    var y: String = ""
    var z: String = ""
    init(){
        self.x = String(format: "%.2f", x)
        self.y = String(format: "%.2f", y)
        self.z = String(format: "%.2f", z)
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("x: \(x)")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
            Text("y: \(y)")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
            Text("z: \(z)")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
        }
    }
}

struct AxisContainer_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            AxisContainer()
        }
    }
}
