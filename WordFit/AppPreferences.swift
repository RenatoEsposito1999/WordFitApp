//
//  AppPreferences.swift
//  WordFit
//
//  Created by Renato on 22/10/21.
//

import Foundation
class appPreferences{
    
    init(){}
    
    static func clearList(){
        UserDefaults.standard.removeObject(forKey: "NotEmpty")
        UserDefaults.standard.removeObject(forKey: "Audio")
        UserDefaults.standard.removeObject(forKey: "NickName")
        UserDefaults.standard.removeObject(forKey: "Score")
        UserDefaults.standard.removeObject(forKey: "Tropies")
        UserDefaults.standard.removeObject(forKey: "FirstLogin")
        UserDefaults.standard.removeObject(forKey: "FirstWorld")
        UserDefaults.standard.removeObject(forKey: "nFind")

    }
    
    static func loadPreferences(){
        UserDefaults.standard.set(true, forKey: "NotEmpty")
        UserDefaults.standard.set(false, forKey: "Audio")
        UserDefaults.standard.set("No nickname", forKey: "NickName")
        UserDefaults.standard.set(0, forKey: "Score")
        UserDefaults.standard.set(0, forKey: "nFind")
        //let Array = [Int]()
        UserDefaults.standard.set(0, forKey: "Tropies")
        UserDefaults.standard.set(true, forKey: "FirstLogin")
        UserDefaults.standard.set(true, forKey: "FirstWorld")
    }
    
    static func getIntPreferences(forKey: String)-> Int{
        UserDefaults.standard.integer(forKey:forKey)
    }
    
    static func getStringPreferences(forKey: String)-> String?{
        UserDefaults.standard.string(forKey:forKey)
    }
    
    static func getBoolPreferences(forKey: String)-> Bool{
        UserDefaults.standard.bool(forKey:forKey)
    }
    
    static func getIntArrayPreferences(forKey: String)-> Any?{
        UserDefaults.standard.object(forKey:forKey)
    }
    
    static func setBoolPreferences(forKey : String, value : Bool){
        UserDefaults.standard.set(value, forKey: forKey)
    }
    
    static func setStringPreferences(forKey : String, value : String){
        UserDefaults.standard.set(value, forKey: forKey)
    }
    
    static func setIntPreferences(forKey : String, value : Int){
        UserDefaults.standard.set(value, forKey: forKey)
    }
    
}
