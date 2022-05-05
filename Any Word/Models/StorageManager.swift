//
//  StorageManager.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/7/22.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let key = "wordOther"
    
    private init() {}
    
    func save(wordOther: WordOtherM) {
        var words = fetchWords()
        words.append(wordOther)
        guard let data = try? JSONEncoder().encode(words) else { return }
        userDefaults.set(data, forKey: key)
    }
    
    func fetchWords() -> [WordOtherM] {
        guard let data = userDefaults.object(forKey: key) as? Data else { return [] }
        guard let words = try? JSONDecoder().decode([WordOtherM].self, from: data) else { return [] }
        return words
    }
    
    func deleteWord(at index: Int) {
        var words = fetchWords()
        words.remove(at: index)
        guard let data = try? JSONEncoder().encode(words) else { return }
        userDefaults.set(data, forKey: key)
    }
}
