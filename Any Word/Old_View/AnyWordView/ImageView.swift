//
//  ImageView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/17/22.
//

import SwiftUI

struct ImageView: View {
    var imageShow: String
    
    
    var body: some View {
        Image(systemName: imageShow)
            .resizable()
            .frame(width: 60, height: 70)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageShow: "xmark.shield")
    }
}
