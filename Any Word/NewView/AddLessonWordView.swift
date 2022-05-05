//
//  AddLessonWord.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/13/22.
//

import SwiftUI

struct AddLessonWordView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @Binding var isShowAddWord: Bool
    @Binding var activateRootLink: Bool
    @Binding var theme: String
    @Binding var inpOrigWord: String
    @Binding var inpTransWord: String
    @Binding var wordLists: [WordSave]
    
    @State private var isShowAddedWordLesson = false
    @State private var isHiddenFirst = true
    @State private var isHiddenSecond = false
    
    //    @State var wordList = ["one", "two", "three"]
    
    //    let wordLists: [WordSave]
    
    var getWordlist = {
        
        //WordSave.getWordList()
    }
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
// MARK: - Заголовок
                    HStack {
                        Text("Тема: ")
                            .font(.title)
                        Text(theme)
                            .font(.title)
                            .italic()
                        Spacer()
                    }.padding()
// MARK: - Список слов урока
                    HStack {
                        Text("Слова в теме")
                        Spacer()
                    }.padding(.horizontal)
                    
                    VStack {
                        ScrollView  {
                            VStack(spacing: 20) {
                                ForEach(wordLists, id:\.self) { word in
                                    HStack {
                                        Image(uiImage: word.imgWord)
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .padding(.horizontal, 3)
                                        Text(word.orgWord)
                                            .padding()
                                            .frame(width: 140, height: 30)
                                            .border(Color.black, width: 1)
                                        Text(word.trsWord)
                                            .padding()
                                            .frame(width: 140, height: 30)
                                            .border(Color.black, width: 1)
                                        Spacer()
                                    }
                                }
                            }
                        }.frame(height: 550)
                    }.padding()
                }
// MARK: - Кнопки навигации
                Spacer()
                HStack {
                    Button("< Back") { isShowAddWord.toggle() }
                    Spacer()
                    Button("Edit") { isShowAddWord.toggle() }
                    Spacer()
                    Button("Add word") { //isHiddenFirst.toggle()
                        isHiddenSecond.toggle()
                    }
                    Spacer()
                    Button("Save") {
//                        isShowAddWord.toggle()
                        print(activateRootLink)
                        activateRootLink.toggle()
                        print(activateRootLink)
//                        let newDictName = DictAny(context: viewContext)
//                        newDictName.nameDict = theme
//                        let newLessonTheme = Lesson(context: viewContext)
//                        newLessonTheme.lsTheme = wordLists as NSObject
//                        newLessonTheme.nameDict = theme
//
//                        do {
//                            try viewContext.save()
////                            presentationMode.wrappedValue.dismiss()
//                        } catch {
//                            print(error.localizedDescription)
//                        }
                        
                    }
                    Spacer()
                    
                }.padding()
            }.modifier(HideView(hidden: isHiddenFirst))
            
            AddedWordLesson(isHiddenFirst: $isHiddenFirst,
                            isHiddenSecond: $isHiddenSecond,
                            inpOrigWord: $inpOrigWord,
                            inpTransWord: $inpTransWord,
                            theme: $theme,
                            wordList: $wordLists)
            .modifier(HideView(hidden: isHiddenSecond))
            
        }
    }
}


// MARK: - Вспомогательный код для отладки UI
struct WordSave: Hashable {
    let nameTheme: String
    let orgWord: String
    let trsWord: String
    let imgWord: UIImage
    
    public static func getWordList() -> [WordSave] {
        
        var words: [WordSave] = []
        
        for _ in 0..<20 {
            let word = WordSave(
                nameTheme: "",
                orgWord: "Wather",
                trsWord: "Водичка",
                imgWord: UIImage(systemName: "house.circle")!
            )
            words.append(word)
        }
        return words
    }
    
}






struct AddLessonWord_Previews: PreviewProvider {
    static var previews: some View {
        AddLessonWordView(isShowAddWord: .constant(false),
                          activateRootLink: .constant(false),
                          theme: .constant("Theme"),
                          inpOrigWord: .constant("empty"),
                          inpTransWord: .constant("empty"),
                          wordLists: .constant(WordSave.getWordList())
//                      wordLists: WordSave.getWordList()
        )
    }
}
