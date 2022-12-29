//
//  DataModel.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/21/22.
//

import UIKit
import Foundation

struct DragonDataModel:Codable {
    
    var dragon:Dragon?
    
    mutating func loadJson(filename fileName: String) {
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Dragon.self, from: data)
                self.dragon = jsonData
            } catch {
                print("error:\(error)")
            }
        }
        
    }

    
}

struct GlaceonDataModel:Codable {
    
    var glaceon:Glaceon?
    
    mutating func loadJson(filename fileName: String) {
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Glaceon.self, from: data)
                self.glaceon = jsonData
            } catch {
                print("error:\(error)")
            }
        }
        
    }

    
}



struct Parser {
    
    static func parseJson<T:Decodable>(fileName: String, fileExtension: String) -> T?
    {
        
        if fileName == "SampleJSONDragon" {
            if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode(Dragon.self, from: data)
                    return jsonData as! T
                } catch {
                    print("error:\(error)")
                }
            } else { print("Error getting file url") }
            return nil
        } else {
            if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode(Glaceon.self, from: data)
                    return jsonData as! T
                } catch {
                    print("error:\(error)")
                }
            } else { print("Error getting file url") }
            return nil
            
        }
        
        
    }
    
    
}
