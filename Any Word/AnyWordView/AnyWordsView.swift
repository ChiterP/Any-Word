//
//  AnyWordsView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/17/22.
//
// экран с детальной инфой по созданному уроку, анг слово - русское, редактирование
// (удаление и добавление слов в урок.

import SwiftUI

struct AnyWordsView: View {
    var viewModel: AnyWordsViewModel
    
    var body: some View {
        VStack {
            HStack {
                ImageView(imageShow: viewModel.imageAnyWordList)
                Text(viewModel.anyWordsNameLesson)
            }.padding()
            Spacer()
            
            Text("экран с детальной инфой по созданному уроку, анг слово - русское, редактирование (удаление и добавление слов в урок.") .padding()
            Spacer()
        }
    }
}

struct AnyWordsView_Previews: PreviewProvider {
    static var previews: some View {
        AnyWordsView(viewModel: AnyWordsViewModel(anyWord: AnyWordList.getAnyWordsNameLesson()))
    }
}
