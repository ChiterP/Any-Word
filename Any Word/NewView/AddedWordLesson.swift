//
//  AddedWordLesson.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/17/22.
//

import SwiftUI

struct AddedWordLesson: View {
    @Binding var isHiddenFirst: Bool
    @Binding var isHiddenSecond: Bool
    
    @Binding var inpOrigWord: String
    @Binding var inpTransWord: String
    @Binding var theme: String
    
    @Binding var wordList: [WordSave]
    
    func addWordList() {
        let wordNew = WordSave(
            nameTheme: theme,
            orgWord: inpOrigWord,
            trsWord: inpTransWord,
            imgWord: UIImage(systemName: "house.circle")!
        )

        wordList.append(wordNew)
}
    
    
    
    var body: some View {
        ZStack {
            RectangleView(opacityColor: 1)
            
            VStack {
                    Text("Добавим слово")
                    TextField("Слово языка", text: $inpOrigWord)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    TextField("Слово перевода", text: $inpTransWord)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                HStack {
                    Button("Cancel") { //isHiddenFirst.toggle()
                            isHiddenSecond.toggle()
                            inpOrigWord = ""
                            inpTransWord = ""
                        }
                    Button("Save") { //isHiddenFirst.toggle()
                        addWordList()
                        isHiddenSecond.toggle()
                        inpOrigWord = ""
                        inpTransWord = ""
                    }
                    .padding()
                }
                }.padding()
                .frame(height: 300 )
        } //alignment: <#T##Alignment#>
    }
}

struct AddedWordLesson_Previews: PreviewProvider {
    static var previews: some View {
        AddedWordLesson(isHiddenFirst: .constant(false),
                        isHiddenSecond: .constant(false),
                        inpOrigWord: .constant("empty"),
                        inpTransWord: .constant("empty"),
                        theme: .constant("Themas"),
                        wordList: .constant(WordSave.getWordList())
        )
    }
}
