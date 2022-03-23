//
//  PropertiView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/20/22.
//

import SwiftUI

struct PropertiView: View {
    @State var showWordAnyAddLessonView = false
    
    var body: some View {
        
        VStack {
            Text("Настройки").bold()
            
            HStack {
                Button(action: {
                    showWordAnyAddLessonView.toggle()
                }) {
                    HStack {
                        Text("Добавить тему")
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .top, endPoint: .bottom))
                    .cornerRadius(40)
                }.sheet(isPresented: $showWordAnyAddLessonView) {
                    WordAnyAddLessonView(
                        showWordAnyAddLessonView: $showWordAnyAddLessonView)
                }.padding()
            }
            Spacer()
        }
    }
}

struct PropertiView_Previews: PreviewProvider {
    static var previews: some View {
        PropertiView()
    }
}
