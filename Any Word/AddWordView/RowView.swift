//
//  RowView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/23/22.
//

import SwiftUI

struct RowView: View {
    let wordOriginal: String
    let wordTrabslate: String
    
    var body: some View {
        HStack {
            VStack {
//                Text("Оригинал")
                Text(wordOriginal)
            }
            Spacer()
            VStack {
//                Text("Перевод")
                Text(wordTrabslate)
            }.padding(.vertical)
            HStack {
                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                    }
                    .foregroundColor(.red)
                }.hidden()
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(wordOriginal: "Wother", wordTrabslate: "Вода")
    }
}
