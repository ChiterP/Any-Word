//
//  RectangleView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/17/22.
//

import SwiftUI

struct RectangleView: View {
    
    let opacityColor: Double
    
    var body: some View {
        Rectangle()
            .fill(Color.init(
                red: 252 / 255,
                green: 12 / 255,
                blue: 7 / 255,
                opacity: opacityColor)
            )
//            .edgesIgnoringSafeArea(.all)
            .frame(height: 300)
            .padding()
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle()
            .fill(Color.init(
                red: 252 / 255,
                green: 12 / 255,
                blue: 7 / 255,
                opacity: 0.3)
            )
//            .edgesIgnoringSafeArea(.all)
            .frame(height: 400)
            .padding()
    }
}
    
