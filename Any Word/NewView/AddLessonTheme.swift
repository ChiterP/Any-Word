//
//  AddLesson.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/13/22.
//

import SwiftUI

struct AddLessonTheme: View {
    @Binding var isShowAddlesson: Bool
    @Binding var activateRootLink: Bool
    
    @State private var inputLesson = ""
    @State private var isShowAddWord = false
    @State private var isHidden = false
    
    @State private var inpOrigWord = ""
    @State private var inpTransWord = ""
    
    @State var wordList: [WordSave] = []

    @Environment(\.isEnabled) private var isEnabled

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Как назовём тему:")
                TextField("напиши тут название темы", text: $inputLesson)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            
            HStack {
                Button("< Exit") { isShowAddlesson.toggle()
                    inputLesson = ""
                }
                    .padding(.trailing, 40)

                Button("Next > ") { isShowAddWord.toggle()
                }
                    .sheet(isPresented: $isShowAddWord) {
                        AddLessonWordView(isShowAddWord: $isShowAddWord,
                                          activateRootLink: $activateRootLink,
                                      theme: $inputLesson,
                                          inpOrigWord: $inpOrigWord,
                                          inpTransWord: $inpTransWord,
                                          wordLists: $wordList
                                         )
//                                      wordLists: WordSave.getWordList())
                    }
                    
            }
        }.frame(width: 380, height: 200)
    }
}


struct AddLesson_Previews: PreviewProvider {
    static var previews: some View {
        AddLessonTheme(isShowAddlesson: .constant(false),
                       activateRootLink: .constant(false))
    }
}
