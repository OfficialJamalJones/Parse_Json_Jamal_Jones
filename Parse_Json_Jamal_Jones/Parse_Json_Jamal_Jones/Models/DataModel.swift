//
//  DataModel.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/21/22.
//

import UIKit
import Foundation

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



