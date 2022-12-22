//
//  ViewController.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/21/22.
//

//HW: Try to consume the above given JSON files, create separate files for models and parse the response from local file. As an output if you could just print out the most nested key that would be fine. No need to bother about UI.

import UIKit

class ViewController: UIViewController {
    
    var dragonModel = DragonDataModel()
    var glaceonModel = GlaceonDataModel()
    let encoder = JSONEncoder()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dragonModel.loadJson(filename: "SampleJSONDragon")
        self.glaceonModel.loadJson(filename: "SampleJSONGlaceon")
        self.printDragon()
        //self.printGlaceon()
        
    }
    
    func printDragon() {
        print("Dragon: \(String(describing: self.dragonModel.dragon))")
        if let encoded = try? self.encoder.encode(self.dragonModel) {
            if let json = String(data: encoded, encoding: .utf8) {
                //print("\nDragon Json: \(json)")
            }
        }
    }
    
    func printGlaceon() {
        print("Glaceon: \(String(describing: self.glaceonModel.glaceon))")
        if let encoded = try? self.encoder.encode(self.glaceonModel) {
            if let json = String(data: encoded, encoding: .utf8) {
                //print("\nGlaceon Json: \(json)")
            }
        }
    }

}

