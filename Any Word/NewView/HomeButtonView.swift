//
//  ButtonView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/13/22.
//

import SwiftUI

struct HomeButtonView: View {
    
    let imageButton: String
    let nameButton: String
    let colorButton: UIColor
    let action: () -> Void
    
    var body: some View {
        
        Button (action: action) {
            VStack {
                ZStack {
                    Color(colorButton)
                        .frame(width: 42, height: 42)
                        .cornerRadius(20)
                    Image(systemName: imageButton)
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                }
                Text(nameButton)
                    .foregroundColor(.black)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(imageButton: "house.circle",
                       nameButton: "Home",
                       colorButton: .blue,
                       action: {})
    }
}
