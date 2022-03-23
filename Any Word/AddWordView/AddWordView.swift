//
//  AddWordView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/19/22.
//
// MARK: - экран для добавления слов в урок
//
import SwiftUI

struct AddWordView: View {
    @Binding var showAddWordView: Bool
    @Binding var inputNameLesson: String
    
    @State var inputOrigWord = ""
    @State var inputTranslWord = ""
        
    @State var tempos = [WordOtherM]()
    
    func tempSave(anyWordOtherM: WordOtherM) {
        var anyWordOtherMs = [WordOtherM]()
        anyWordOtherMs.append(anyWordOtherM)
        print(anyWordOtherMs)
        tempos.append(anyWordOtherM)
        print(tempos)
    }
    
    
    var body: some View {
        VStack {
            VStack {
                Text("Добавим слова в тему:\n \(inputNameLesson)")
                    .multilineTextAlignment(.center)
                .padding()
                
                VStack {
                    TextField("Напиши оригинал слова", text: $inputOrigWord)
                    TextField("Напиши перевод слова", text: $inputTranslWord)
                }.padding(.horizontal)
            
                Button(action: {
                    print("Save tapped!")
                    tempSave(anyWordOtherM: WordOtherM.init(
                        id: UUID(),
                        imageDict: "empty",
                        imageWord: "empty",
                        nameDict: inputNameLesson,
                        wordOrig: inputOrigWord,
                        wordTrans: inputTranslWord)
                    )
                }) {
                    HStack {
                        Spacer()
                        Image(systemName: "arrow.down.circle.fill")
//                            .font(.title)
                        Text("Добавить")
                            .fontWeight(.semibold)
//                            .font(.title)
                        Spacer()
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .top, endPoint: .bottom))
                    .cornerRadius(40)
                } .padding()
                
                
                VStack {
                    HStack {
                        Text("Оригинал")
                        Spacer()
                        Text("Перевод")
                        
                    }.padding(.horizontal, 40)
                    
                    List {
                        
                        
                            VStack {
                                ForEach(tempos, id: \.id) { temp in
                                    RowView(wordOriginal: temp.wordOrig,
                                            wordTrabslate: temp.wordTrans)
                                }
                            }
                        
                        
                       
                            
                        
                            
                            
                            
        //                    Text("Оригинал слова")
        //                    Spacer()
        //                    Text("Первод слова")
        //                    Button(action: {
        //                        print("Delete tapped!")
        //                    }) {
        //                        HStack {
        //                            Image(systemName: "trash")
        //                        }
        //                        .padding()
        //                        .foregroundColor(.red)
        //                    }
                    }
                }
//                }
//                .padding()

            }
            
            Spacer()
            
            HStack {
                Button("< Назад") {
                    showAddWordView.toggle()
                }.padding()
                
                Button("Сохранить") {
                    showAddWordView.toggle()
                }.padding()
            }
            
        }
    }
}



extension AddWordView {
    


}

struct AddWordView_Previews: PreviewProvider {
    static var previews: some View {
        AddWordView(showAddWordView: .constant(false),
                    inputNameLesson: .constant("Простые глаголы"))
    }
}


//func save(contact: Contact) {
//    var contacts = fetchContacts()
//    contacts.append(contact)
//    guard let data = try? JSONEncoder().encode(contacts) else { return }
//    userDefaults.set(data, forKey: key)
//}
//
//func fetchContacts() -> [Contact] {
//    guard let data = userDefaults.object(forKey: key) as? Data else { return [] }
//    guard let contacts = try? JSONDecoder().decode([Contact].self, from: data) else { return [] }
//    return contacts
//}
