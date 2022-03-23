//
//  Models.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 12/10/21.
//

import Foundation

struct WordOtherM: Decodable {
    let id: UUID
    let imageDict: String
    let imageWord: String
    let nameDict: String
    let wordOrig: String
    let wordTrans: String
    
    public static func getWordOtherM() -> WordOtherM {
        return WordOtherM(
            id: UUID(),
            imageDict: "circle",
            imageWord: "checkmark.circle",
            nameDict: "ntrcn",
            wordOrig: "Wather",
            wordTrans: "Водичка"
        )
    }
}

struct AnyWordList: Decodable {
    let anyWordsNameLesson: String
    let imageAnyWordList: String
    
    static func getAnyWordsNameLesson() -> AnyWordList {
        return AnyWordList(
            anyWordsNameLesson: "Глаголы правильные",
            imageAnyWordList:  "xmark.shield"
        )
    }
}


