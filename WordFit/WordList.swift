//
//  WordList.swift
//  WordFit
//
//  Created by Renato on 21/10/21.
//

import Foundation

class WordList{
    private static var Sing_wordList : WordList = WordList() //Singleton
    private var wordList : [Int: Word] = [:]
    private var lenght : Int = Int.init()
    
//    Singleton Lazy Implementation
    static func getIstance()->WordList{
        return .Sing_wordList
    }
    
     func listInitializer(){
        let tmp : [Word] = Decoder.loadJson(fileName: "word")
        for i in 0...tmp.count - 1{
            addElement(key: i, value: tmp[i])
        }
    }

    func addElement(key : Int , value : Word){
        var tmp  = value
        tmp.setUsed(flag: false)
        wordList.updateValue(tmp, forKey: key)
    }
    
    func getElementsFromWordList(index : Int) -> Word?{return wordList[index]}
    
    func printList(){
        for item in wordList {
            print(item.key)
            print(item.value)
        }
    }
    
    func getSize() -> Int {return wordList.count}
    
    func getRandomElement()->Word{wordList.randomElement()!.value}
    
    func resetValue(){
        for i in 0...wordList.count - 1{
            wordList[i]?.setUsed(flag: false)
            
        }
    }
    
}

