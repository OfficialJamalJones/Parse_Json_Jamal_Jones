//
//  ViewController.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/21/22.
//

//HW: Try to consume the above given JSON files, create separate files for models and parse the response from local file. As an output if you could just print out the most nested key that would be fine. No need to bother about UI.

import UIKit

class ViewController: UIViewController {
    
    var glaceonModel = GlaceonDataModel()
    let encoder = JSONEncoder()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.glaceonModel.loadJson(filename: "SampleJSONGlaceon")
        self.printGlaceon()
        
    }
    
    func printGlaceon() {
        print("Glaceon: \(self.glaceonModel.glaceon)")
        if let encoded = try? self.encoder.encode(self.glaceonModel) {
            if let json = String(data: encoded, encoding: .utf8) {
                //print("\nGlaceon Json: \(json)")
            }
        }
    }

}

