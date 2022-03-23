//
//  PropertiViewModel.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/20/22.
//

import Foundation

protocol PropertiViewModelProtocol {
    var anyWordsNameLesson: String { get }
    var imageAnyWordList: String { get }
    
    init(anyWord: AnyWordList)
}


class PropertiViewModel: PropertiViewModelProtocol, ObservableObject {
    
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
