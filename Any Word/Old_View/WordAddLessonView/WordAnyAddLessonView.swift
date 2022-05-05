//
//  WordAnyAddView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/18/22.
//
// MARK: - экран для добавления уроков

import SwiftUI

struct WordAnyAddLessonView: View {
    @State var inputNameLesson = ""
    @State var showAddWordView = false
    
    @Binding var showWordAnyAddLessonView: Bool
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Как назовём тему:")
                TextField("напиши тут название темы", text: $inputNameLesson)
            }.padding()

            HStack {
                Button("< Назад") {
                    showWordAnyAddLessonView.toggle()
                } .padding(.trailing, 40)
                
                Button("Далее > ") {
                    showAddWordView.toggle()
                } .sheet(isPresented: $showAddWordView) {
                    AddWordView(showAddWordView: $showAddWordView,
                                inputNameLesson: $inputNameLesson)
            }
            }
        }
    }
}

struct WordAnyAddLessonView_Previews: PreviewProvider {
    static var previews: some View {
        WordAnyAddLessonView(
            showWordAnyAddLessonView: .constant(false))
    }
}
