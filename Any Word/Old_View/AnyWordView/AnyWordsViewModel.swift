//
//  AnyWorsViewModel.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/17/22.
//

import Foundation

protocol AnyWordsViewModelProtocol {
    var anyWordsNameLesson: String { get }
    var imageAnyWordList: String { get }
    
    init(anyWord: AnyWordList)
}


class AnyWordsViewModel: AnyWordsViewModelProtocol, ObservableObject {
    
    private let anyWordList: AnyWordList
    
    required init(anyWord: AnyWordList) {
        self.anyWordList = anyWord
    }
    
    var anyWordsNameLesson: String {
        anyWordList.anyWordsNameLesson
    }
    
    var imageAnyWordList: String {
        anyWordList.imageAnyWordList
    }
    
}
